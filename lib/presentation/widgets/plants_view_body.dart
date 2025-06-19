import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:plantify/constants/constants.dart';

import 'custom_counter_widget.dart';
import 'lock_card_painter.dart';

class PlantsViewBody extends StatefulWidget {
  const PlantsViewBody({super.key});

  @override
  State<PlantsViewBody> createState() => _PlantsViewBodyState();
}

class _PlantsViewBodyState extends State<PlantsViewBody> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        width: 380,
                        height: 135,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              images[index],
                              width: 130,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RatingBar.builder(
                                  itemSize: 15.0,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    if (kDebugMode) {
                                      print(rating);
                                    }
                                  },
                                ),
                                Text(
                                  titles[index],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  prices[index],
                                  style: const TextStyle(
                                      color: primaryColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    CustomCounter(
                                      icon: Icons.remove,
                                      onTap: () {
                                        setState(() {
                                          if (counts[index] >= 1) {
                                            counts[index]--;
                                          }
                                        });
                                      },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Text(
                                        "x${counts[index]}",
                                        style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    CustomCounter(
                                      icon: Icons.add,
                                      onTap: () {
                                        setState(() {
                                          counts[index]++;
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const Spacer(),
                            Transform.translate(
                              offset: const Offset(17, 0),
                              child: CustomPaint(
                                size: const Size(90, 102),
                                painter: LockCardPainter(),
                                child: const SizedBox(
                                  width: 100,
                                  height: 72,
                                  child: Align(
                                    // alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.lock,
                                      size: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: images.length),
            ),
          ],
        ),
        Positioned(
          bottom: 40,
          left: 0,
          child: Transform.translate(
            offset: const Offset(-42, 0),
            child: CustomPaint(
              size: const Size(200, 100),
              painter: RPSCustomPainter(),
              child: const SizedBox(
                width: 180,
                height: 102,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: 29),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 25,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          right: -42,
          child: Transform.flip(
            flipX: true,
            child: CustomPaint(
              size: const Size(200, 100),
              painter: RPSCustomPainter(),
              child: const SizedBox(
                width: 180,
                height: 102,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: 29),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -20,
          right: 120,
          child: CustomPaint(
            size: const Size(200, 100),
            painter: RPSCustomPainterBottom(),
            child: const SizedBox(
              width: 180,
              height: 102,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(right: 0),
                  child: Icon(
                    Icons.lock,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<String> images = [
  "assets/images/panana.png",
  "assets/images/pepe.png",
  "assets/images/sanseviria.png",
  "assets/images/strelitzia.png",
];
List<String> titles = [
  "Banana Tree",
  "Peperomia",
  "Sanseviria",
  "Strelitzia",
];
List<String> prices = [
  "€78",
  "€35",
  "€15",
  "€100",
];
List<int> counts = [3, 2, 1, 2];

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

class RPSCustomPainterBottom extends CustomPainter {
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
