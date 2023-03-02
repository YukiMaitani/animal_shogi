import 'package:animal_shogi/data/model/draw_info.dart';
import 'package:animal_shogi/pages/draw/animal_custom_painter.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'draw_page.dart';

final drawingControllerProvider =
    ChangeNotifierProvider.autoDispose((ref) => DrawingController());

class DrawingController extends ChangeNotifier {
  Color _color = Colors.black;

  Color get color => _color;
  DrawMode _drawMode = DrawMode.pen;

  DrawMode get drawMode => _drawMode;

  List<DrawInfo> _drawInfoList = [];

  List<DrawInfo> get drawInfoList => _drawInfoList;

  List<DrawInfo> get drawPathList => _drawInfoList
      .where((drawInfo) =>
          drawInfo.drawType == DrawType.pen ||
          drawInfo.drawType == DrawType.eraser)
      .toList();

  List<DrawInfo> get drawTextList => _drawInfoList
      .where((drawInfo) => drawInfo.drawType == DrawType.text)
      .toList();

  final List<Offset?> _offsets = [];

  List<Offset?> get offsets => _offsets;

  double _penWidth = 12;

  double get penWidth => _penWidth;

  double _eraserWidth = 12;

  double get eraserWidth => _eraserWidth;

  final List<List<DrawInfo>> _drawHistory = [[]];

  List<List<DrawInfo>> get drawHistory => _drawHistory;

  List<List<DrawInfo>> _undoList = [];

  List<List<DrawInfo>> get undoList => _undoList;

  int _currentEraserTabIndex = 0;

  int get currentEraserTabIndex => _currentEraserTabIndex;

  set currentEraserTabIndex(int value) {
    _currentEraserTabIndex = value;
    notifyListeners();
  }

  DrawInfo? _selectedDrawText;

  DrawInfo? get selectedDrawText => _selectedDrawText;

  int? _selectedDrawTextIndex;

  int? get selectedDrawTextIndex => _selectedDrawTextIndex;

  Paint? get paint {
    switch (drawMode) {
      case DrawMode.pen:
        return Paint()
          ..color = _color
          ..strokeWidth = _penWidth
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round;
      case DrawMode.pixelEraser:
        return Paint()
          ..blendMode = BlendMode.clear
          ..strokeWidth = _eraserWidth
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round;
      case DrawMode.objectEraser:
      case DrawMode.text:
      case DrawMode.none:
        return null;
    }
  }

  void setColor(Color color) {
    _color = color;
    notifyListeners();
  }

  void setDrawMode(DrawMode drawMode) {
    _drawMode = drawMode;
    notifyListeners();
  }

  void pathPanStart(Offset offset) {
    switch (drawMode) {
      case DrawMode.pen:
        _drawInfoList.add(DrawInfo(
          drawType: DrawType.pen,
          paint: paint,
          offsets: [offset],
        ));
        _undoList = [];
        notifyListeners();
        break;
      case DrawMode.pixelEraser:
        _drawInfoList.add(DrawInfo(
          drawType: DrawType.eraser,
          paint: paint,
          offsets: [offset],
        ));
        _undoList = [];
        notifyListeners();
        break;
      case DrawMode.objectEraser:
        break;
      case DrawMode.text:
      case DrawMode.none:
        return;
    }
  }

  void pathPanUpdate(Offset offset) {
    switch (drawMode) {
      case DrawMode.pen:
      case DrawMode.pixelEraser:
        final lastDrawInfoOffsets = _drawInfoList.last.offsets;
        if (lastDrawInfoOffsets == null) {
          return;
        }
        final changedLastDrawInfo = _drawInfoList.last
            .copyWith(offsets: [...lastDrawInfoOffsets, offset]);
        _drawInfoList.last = changedLastDrawInfo;
        _undoList = [];
        notifyListeners();
        break;
      case DrawMode.objectEraser:
      case DrawMode.text:
      case DrawMode.none:
        return;
    }
  }

  void addDrawHistory() {
    _drawHistory.add(List.of(_drawInfoList));
    notifyListeners();
  }

  void addOffsets(Offset? offset) {
    _offsets.add(offset);
    notifyListeners();
  }

  void setPenWidth(double penWidth) {
    _penWidth = penWidth;
    notifyListeners();
  }

  void setEraserWidth(double eraserWidth) {
    _eraserWidth = eraserWidth;
    notifyListeners();
  }

  void setEraserMode() {
    if (currentEraserTabIndex == 0) {
      _drawMode = DrawMode.pixelEraser;
    }
    if (currentEraserTabIndex == 1) {
      _drawMode = DrawMode.objectEraser;
    }
    notifyListeners();
  }

  void undo() {
    if (_drawHistory.length <= 1) {
      return;
    }
    final lastHistory = _drawHistory.last;
    final backedDrawInfo = _drawHistory[_drawHistory.length - 2];
    _drawInfoList = List.of(backedDrawInfo);
    _undoList.add(List.of(lastHistory));
    _drawHistory.removeLast();
    notifyListeners();
  }

  void redo() {
    if (_undoList.isEmpty) {
      return;
    }
    final lastUndo = _undoList.last;
    _drawInfoList = List.of(lastUndo);
    _drawHistory.add(List.of(lastUndo));
    _undoList.removeLast();
    notifyListeners();
  }

  void objectErase(Offset tapPoint) {
    final List<DrawInfo> erasedList = [];
    outer:
    for (final drawInfo in _drawInfoList) {
      if (drawInfo.drawType != DrawType.pen) {
        erasedList.add(drawInfo);
        continue;
      }
      final offsets = drawInfo.offsets;
      if (offsets == null || offsets.isEmpty) {
        erasedList.add(drawInfo);
        continue;
      }
      final tappedArea = Path()
        ..addRect(Rect.fromCircle(center: tapPoint, radius: 28));
      for (final offset in offsets) {
        if (offset == null) {
          continue;
        }
        if (tappedArea.contains(offset)) {
          continue outer;
        }
      }
      erasedList.add(drawInfo);
    }
    if (_drawInfoList.length != erasedList.length) {
      _drawInfoList = erasedList;
      addDrawHistory();
      _undoList = [];
      notifyListeners();
    }
  }

  void setDrawText(DrawInfo drawText) {
    for (var i = 0; i < _drawInfoList.length; i++) {
      if (_drawInfoList[i].drawType != DrawType.text) {
        continue;
      }
      if (_drawInfoList[i] == drawText) {
        _selectedDrawText = drawText;
        _selectedDrawTextIndex = i;
        notifyListeners();
        return;
      }
    }
  }

  void addDrawText(Offset leftTopOffset) {
    final drawText = DrawInfo(
        drawType: DrawType.text,
        leftTopOffset: leftTopOffset,
        width: drawTextInitialLength,
        height: drawTextInitialLength);
    _drawInfoList.add(drawText);
    _selectedDrawText = drawText;
    _selectedDrawTextIndex = _drawInfoList.length;
    _drawMode = DrawMode.text;
    addDrawHistory();
  }

  void updateDrawText(Offset updateOffset) {
    if (_selectedDrawText == null || _selectedDrawTextIndex == null) {
      return;
    }
    final updatedDrawText =
        _selectedDrawText!.copyWith(leftTopOffset: updateOffset);
    _drawInfoList = List.of(_drawInfoList)
      ..[_selectedDrawTextIndex!] = updatedDrawText;
    notifyListeners();
  }

  void resetSelectedDrawText() {
    _selectedDrawText = null;
    _selectedDrawTextIndex = null;
    notifyListeners();
  }
}

enum DrawMode { pen, pixelEraser, objectEraser, text, none }
