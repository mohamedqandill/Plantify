import 'package:flutter/material.dart';
import 'package:plantify/constants/constants.dart';
import 'package:plantify/plants/presentation/widgets/side_custom_painter.dart';

import 'bottom_custom_painter.dart';

class PlantsDetailsScreen extends StatefulWidget {
  const PlantsDetailsScreen(
      {super.key,
      required this.image,
      required this.price,
      required this.title});

  final String image;
  final String price;
  final String title;

  @override
  State<PlantsDetailsScreen> createState() => _PlantsDetailsScreenState();
}

class _PlantsDetailsScreenState extends State<PlantsDetailsScreen> {
  var currentIndex = 0;
  int count = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 680,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(290),
                      bottomLeft: Radius.circular(290),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 30,
                        child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  if (index == 0) {
                                    setState(() {
                                      currentIndex = 0;
                                    });
                                  } else if (index == 1) {
                                    setState(() {
                                      currentIndex = 1;
                                    });
                                  } else {
                                    setState(() {
                                      currentIndex = 2;
                                    });
                                  }
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: currentIndex == index
                                          ? secondaryColor
                                          : Colors.black54.withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      size[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: 3),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Transform.rotate(
                                angle: 180 / 14,
                                child: Image.asset(
                                  widget.image,
                                  width: 340,
                                  height: 400,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 40,
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      color: secondaryColor,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.grey,
                                      size: 35,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 20, right: 29),
                            child: Column(
                              children: [
                                Text(
                                  widget.title,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 37,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "BIRD OF PARADISE",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  widget.price,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 37,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Transform.translate(
                    offset: const Offset(-62, 0),
                    child: CustomPaint(
                      size: const Size(130, 90),
                      painter: RPSCustomPainter(),
                      child: const SizedBox(
                        width: 180,
                        height: 90,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(right: 2, top: 5),
                            child: Icon(
                              Icons.person,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Transform.flip(
                    flipX: true,
                    origin: const Offset(30, 0),
                    child: CustomPaint(
                      size: const Size(130, 90),
                      painter: RPSCustomPainter(),
                      child: const SizedBox(
                        width: 180,
                        height: 90,
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(right: 2, top: 5),
                            child: Icon(
                              Icons.home,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: const Icon(
                      Icons.add,
                      size: 40,
                    ),
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (count >= 1) {
                          count--;
                        }
                      });
                    },
                    child: const Icon(
                      Icons.remove,
                      size: 40,
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(0, 10),
                child: CustomPaint(
                  size: const Size(200, 50),
                  painter: RPSCustomPainterBottom(isWhite: false),
                  child: const SizedBox(
                    width: 180,
                    height: 56,
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
          ),
          Positioned(
            bottom: 61,
            right: 70,
            child: CustomPaint(
              size: const Size(250, 100),
              painter: RPSCustomPainterBottomContainer(),
              child: SizedBox(
                width: 250,
                height: 180,
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 29),
                    child: Text(
                      "x$count",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> size = ["M", "L", "XL"];

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
