import 'dart:math';

import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  double outerBorder = 15;
  double percentage = 0;

  CirclePainter(this.percentage) {
    percentage = percentage;
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate.percentage != percentage;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = min(size.height, size.width) / 2 - 10;
    final Offset center = Offset(size.width / 2, size.height / 2);
    final Rect outerRect =
        Rect.fromCircle(center: center, radius: radius - outerBorder / 2);
    canvas.drawArc(
      outerRect,
      1.5 * pi,
      2 * pi * (percentage / 100),
      false,
      Paint()
        ..color = Colors.white
        ..strokeWidth = outerBorder
        ..style = PaintingStyle.stroke,
    );
  }
}
