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

  final List<DrawInfo> _drawHistory = [];

  List<DrawInfo> get drawHistory => _drawHistory;

  final List<Offset?> _offsets = [];

  List<Offset?> get offsets => _offsets;

  double _strokeWidth = 10;

  double get strokeWidth => _strokeWidth;

  Paint get paint => Paint()
    ..color = _color
    ..strokeWidth = _strokeWidth
    ..style = PaintingStyle.stroke
    ..strokeCap = StrokeCap.round
    ..strokeJoin = StrokeJoin.round;

  void setColor(Color color) {
    _color = color;
    notifyListeners();
  }

  void setDrawMode(DrawMode drawMode) {
    _drawMode = drawMode;
    notifyListeners();
  }

  void pathPanStart(Offset offset) {
    _drawHistory.add(DrawInfo(
      drawMode: drawMode,
      paint: paint,
      offsets: [offset],
    ));
    notifyListeners();
  }

  void pathPanUpdate(Offset offset) {
    final lastDrawInfoOffsets = _drawHistory.last.offsets;
    if (lastDrawInfoOffsets == null) {
      return;
    }
    final changedLastDrawInfo =
        _drawHistory.last.copyWith(offsets: [...lastDrawInfoOffsets, offset]);
    _drawHistory.last = changedLastDrawInfo;
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
}

enum DrawMode { pen, eraser, text, none }
