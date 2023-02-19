import 'package:animal_shogi/data/model/draw_info.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final drawingControllerProvider =
    ChangeNotifierProvider.autoDispose((ref) => DrawingController());

class DrawingController extends ChangeNotifier {
  Color _color = Colors.black;

  Color get color => _color;
  DrawMode _drawMode = DrawMode.pen;

  DrawMode get drawMode => _drawMode;

  List<DrawInfo> _drawInfoList = [];

  List<DrawInfo> get drawInfoList => _drawInfoList;

  final List<Offset?> _offsets = [];

  List<Offset?> get offsets => _offsets;

  double _strokeWidth = 10;

  double get strokeWidth => _strokeWidth;

  final List<List<DrawInfo>> _drawHistory = [[]];

  List<List<DrawInfo>> get drawHistory => _drawHistory;

  List<List<DrawInfo>> _undoList = [];

  List<List<DrawInfo>> get undoList => _undoList;

  Paint? get paint {
    switch (drawMode) {
      case DrawMode.pen:
        return Paint()
          ..color = _color
          ..strokeWidth = _strokeWidth
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round;
      case DrawMode.eraser:
        return Paint()
          ..blendMode = BlendMode.clear
          ..strokeWidth = _strokeWidth
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round;
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
      case DrawMode.eraser:
        _drawInfoList.add(DrawInfo(
          drawMode: drawMode,
          paint: paint,
          offsets: [offset],
        ));
        _undoList = [];
        notifyListeners();
        break;
      case DrawMode.text:
      case DrawMode.none:
        return;
    }
  }

  void pathPanUpdate(Offset offset) {
    switch (drawMode) {
      case DrawMode.pen:
      case DrawMode.eraser:
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

  void setStrokeWidth(double strokeWidth) {
    _strokeWidth = strokeWidth;
    notifyListeners();
  }

  void undo() {
    if(_drawHistory.length <= 1) { return; }
    final lastHistory = _drawHistory.last;
    final backedDrawInfo = _drawHistory[_drawHistory.length - 2];
    _drawInfoList = List.of(backedDrawInfo);
    _undoList.add(List.of(lastHistory));
    _drawHistory.removeLast();
    notifyListeners();
  }

  void redo() {
    if(_undoList.isEmpty) { return; }
    final lastUndo = _undoList.last;
    _drawInfoList = List.of(lastUndo);
    _drawHistory.add(List.of(lastUndo));
    _undoList.removeLast();
    notifyListeners();
  }
}

enum DrawMode { pen, eraser, text, none }
