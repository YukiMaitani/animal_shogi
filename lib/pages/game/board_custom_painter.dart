import 'package:flutter/material.dart';

import '../../foundation/colors.dart';


class BoardCustomPainter extends CustomPainter {
  BoardCustomPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final pathPaint = Paint()..color = boardFrameBorderColor..strokeWidth = 1;
    final baseWidth = size.width / 8;
    for (var i = 0; i < 5; i++) {
      final path = Path()
        ..moveTo(baseWidth * i, 0)
        ..lineTo(baseWidth * i, baseWidth * 4);
      canvas.drawPath(path, pathPaint);
    }
    for (var i = 0; i < 4; i++) {
      final path = Path()
        ..moveTo(0, baseWidth * 1)
        ..lineTo(baseWidth * 3, baseWidth * i);
      canvas.drawPath(path, pathPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
