import 'package:flutter/material.dart';

class DrawCurveBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = Colors.white.withOpacity(0.1);

    // final path = Path();
    Path myPath = Path();

    myPath.moveTo(width * 0.25, 0);

    myPath.quadraticBezierTo(
        width * 0.7, height * 0.15, width * 0.4, height * 0.3);
    myPath.quadraticBezierTo(
        width * 0.15, height * 0.45, width * 0.4, height * 0.65);
    myPath.quadraticBezierTo(
        width * 0.51, height * 0.75, width * 1, height * 0.85);

    myPath.lineTo(width * 25, 0);
    myPath.lineTo(width, 0);

    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
