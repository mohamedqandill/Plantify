import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3163333, size.height * 0.1700000);
    path_0.quadraticBezierTo(size.width * 0.3143333, size.height * 0.7528333,
        size.width * 0.3150000, size.height * 0.9213333);
    path_0.cubicTo(
        size.width * 0.3922083,
        size.height * 0.6815000,
        size.width * 0.6066250,
        size.height * 0.9231667,
        size.width * 0.6658333,
        size.height * 0.5566667);
    path_0.cubicTo(
        size.width * 0.6041250,
        size.height * 0.1055833,
        size.width * 0.3918750,
        size.height * 0.3967500,
        size.width * 0.3183333,
        size.height * 0.1043333);
    path_0.quadraticBezierTo(size.width * 0.3183333, size.height * 0.1047500,
        size.width * 0.3196667, size.height * 0.1833333);

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
