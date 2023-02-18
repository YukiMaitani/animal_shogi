import 'dart:ui';

import 'package:animal_shogi/pages/draw/drawing_controller.dart';
import 'package:flutter/cupertino.dart';

class AnimalCustomPainter extends CustomPainter {
  AnimalCustomPainter(this.drawingController);

  DrawingController drawingController;

  @override
  void paint(Canvas canvas, Size size) {
    final points = drawingController.offsets;
    if (points.isEmpty) {
      return;
    }
    final firstPoint = points[0];
    if (firstPoint == null) {
      return;
    }

    canvas.saveLayer(Rect.largest, Paint());

    if (points.length == 1) {
      canvas.drawPoints(
          PointMode.points, [firstPoint], drawingController.paint);
    } else {
      final path = Path()..moveTo(firstPoint.dx, firstPoint.dy);
      for (var i = 1; i < points.length; i++) {
        if (points[i] != null) {
          path.lineTo(points[i]!.dx, points[i]!.dy);
        }
      }
      canvas.drawPath(path, drawingController.paint);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
