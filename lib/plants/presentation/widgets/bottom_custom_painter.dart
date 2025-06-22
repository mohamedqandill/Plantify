import 'package:flutter/material.dart';

class RPSCustomPainterBottom extends CustomPainter {
  final bool isWhite;
  RPSCustomPainterBottom({this.isWhite = true});
  @override
  void paint(Canvas canvas, Size size) {
    // Triangle

    Paint paint_fill_1 = Paint()
      ..color =
          isWhite ? Colors.white : const Color.fromARGB(255, 142, 214, 138)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4873167, size.height * 0.1737500);
    path_1.cubicTo(
        size.width * 0.2964583,
        size.height * 0.3010667,
        size.width * 0.3861500,
        size.height * 0.7226000,
        size.width * 0.2060750,
        size.height * 0.8283833);
    path_1.cubicTo(
        size.width * 0.3168833,
        size.height * 0.8621667,
        size.width * 0.6878833,
        size.height * 0.8514833,
        size.width * 0.8209333,
        size.height * 0.8301500);
    path_1.cubicTo(
        size.width * 0.5877167,
        size.height * 0.7175833,
        size.width * 0.7319667,
        size.height * 0.3295833,
        size.width * 0.4873167,
        size.height * 0.1737500);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Triangle

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
