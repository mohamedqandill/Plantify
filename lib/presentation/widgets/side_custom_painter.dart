import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // canvas.translate(-size.width * 0.2089417, 0);

    Paint paint_fill_1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2089417, size.height * 0.0915333);
    path_1.cubicTo(
        size.width * 0.2497250,
        size.height * 0.3168667,
        size.width * 0.5224750,
        size.height * 0.2037000,
        size.width * 0.5364833,
        size.height * 0.5179500);
    path_1.cubicTo(
        size.width * 0.5250750,
        size.height * 0.8211667,
        size.width * 0.2380583,
        size.height * 0.6888167,
        size.width * 0.2080917,
        size.height * 0.9145833);
    path_1.cubicTo(
        size.width * 0.2085687,
        size.height * 0.7109375,
        size.width * 0.2083042,
        size.height * 0.7088208,
        size.width * 0.2089417,
        size.height * 0.0915333);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
