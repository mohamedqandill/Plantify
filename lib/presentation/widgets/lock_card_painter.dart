import 'package:flutter/material.dart';
import 'package:plantify/constants/constants.dart';

class LockCardPainter extends CustomPainter {
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
    path_0.moveTo(size.width * 0.2881500, size.height * 0.4278167);
    path_0.cubicTo(
        size.width * 0.3318917,
        size.height * 0.3056333,
        size.width * 0.8050833,
        size.height * 0.3982667,
        size.width * 0.8323833,
        size.height * 0.2831833);
    path_0.cubicTo(
        size.width * 0.8306000,
        size.height * 0.3875000,
        size.width * 0.8323833,
        size.height * 0.6282167,
        size.width * 0.8350583,
        size.height * 0.7129167);
    path_0.cubicTo(
        size.width * 0.8026000,
        size.height * 0.6068333,
        size.width * 0.3295333,
        size.height * 0.7464333,
        size.width * 0.2908583,
        size.height * 0.6061000);
    path_0.cubicTo(
        size.width * 0.2808250,
        size.height * 0.5250000,
        size.width * 0.2825500,
        size.height * 0.5252833,
        size.width * 0.2881500,
        size.height * 0.4278167);
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
