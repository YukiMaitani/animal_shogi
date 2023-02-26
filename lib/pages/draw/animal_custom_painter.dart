import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../../data/model/draw_info.dart';

const double drawTextInitialLength = 50;

class AnimalCustomPainter extends CustomPainter {
  AnimalCustomPainter(this.drawPathList);

  List<DrawInfo> drawPathList;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.saveLayer(Rect.largest, Paint());
    for (var i = 0; i < drawPathList.length; i++) {
      final drawInfo = drawPathList[i];
      final paint = drawInfo.paint;
      final points = drawInfo.offsets;
      if (points == null || points.isEmpty || paint == null) {
        continue;
      }
      final firstPoint = points[0];
      if (firstPoint == null) {
        continue;
      }

      if (points.length == 1) {
        canvas.drawPoints(
            PointMode.points, [firstPoint], paint);
      } else {
        final path = Path()..moveTo(firstPoint.dx, firstPoint.dy);
        for (var i = 1; i < points.length; i++) {
          if (points[i] != null) {
            path.lineTo(points[i]!.dx, points[i]!.dy);
          }
        }
        canvas.drawPath(path, paint);
      }
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
