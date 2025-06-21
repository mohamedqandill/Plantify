import 'package:flutter/material.dart';

class PacksCustomPainter extends CustomPainter {
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
    path_0.moveTo(size.width * 0.5083333, size.height * 0.1533333);

    canvas.drawPath(path_0, paint_fill_0);

    // Square shape only (no border)
    Paint paint_fill_1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4523917, size.height * 0.3092833);
    path_1.cubicTo(
        size.width * 0.4440167,
        size.height * 0.0159000,
        size.width * 0.5587250,
        size.height * 0.0088500,
        size.width * 0.5372667,
        size.height * 0.3288167);
    path_1.cubicTo(
        size.width * 0.5408250,
        size.height * 0.4787167,
        size.width * 0.5337083,
        size.height * 0.6505833,
        size.width * 0.5328167,
        size.height * 0.7542667);
    path_1.cubicTo(
        size.width * 0.5276083,
        size.height * 1.0192167,
        size.width * 0.4567000,
        size.height * 1.0174333,
        size.width * 0.4568333,
        size.height * 0.7489333);
    path_1.cubicTo(
        size.width * 0.4568333,
        size.height * 0.6452500,
        size.width * 0.4541583,
        size.height * 0.4603167,
        size.width * 0.4523917,
        size.height * 0.3092833);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
