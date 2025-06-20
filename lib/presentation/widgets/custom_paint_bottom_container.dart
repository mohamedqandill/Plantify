import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class RPSCustomPainterBottomContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = secondaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.2515000, size.height * 0.2556667);
    path_0.cubicTo(
        size.width * 0.3712917,
        size.height * 0.3199167,
        size.width * 0.5407917,
        size.height * 0.3182500,
        size.width * 0.6590000,
        size.height * 0.2453333);
    path_0.cubicTo(
        size.width * 0.6691667,
        size.height * 0.3512500,
        size.width * 0.8928333,
        size.height * 0.8044167,
        size.width * 0.6410000,
        size.height * 0.7636667);
    path_0.cubicTo(
        size.width * 0.5182083,
        size.height * 0.7014167,
        size.width * 0.4006250,
        size.height * 0.6969167,
        size.width * 0.2731667,
        size.height * 0.7640000);
    path_0.quadraticBezierTo(size.width * 0.2729583, size.height * 0.7648333,
        size.width * 0.2730000, size.height * 0.7673333);
    path_0.quadraticBezierTo(size.width * 0.0861250, size.height * 0.8000833,
        size.width * 0.2515000, size.height * 0.2556667);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
