import 'package:flutter/material.dart';
import 'package:plantify/constants/constants.dart';

class RPSCustomPainterBottom extends CustomPainter {
  final bool isWhite;
  RPSCustomPainterBottom({this.isWhite = true});
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = isWhite ? Colors.white : secondaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1683333, size.height * 0.8400000);
    path_0.cubicTo(
        size.width * 0.2801583,
        size.height * 0.7275500,
        size.width * 0.3760833,
        size.height * 0.3251167,
        size.width * 0.4991083,
        size.height * 0.2978667);
    path_0.cubicTo(
        size.width * 0.6355000,
        size.height * 0.3185667,
        size.width * 0.7340417,
        size.height * 0.7320333,
        size.width * 0.8358333,
        size.height * 0.8416667);
    path_0.cubicTo(
        size.width * 0.6689583,
        size.height * 0.8412500,
        size.width * 0.6689583,
        size.height * 0.8412500,
        size.width * 0.1683333,
        size.height * 0.8400000);
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
