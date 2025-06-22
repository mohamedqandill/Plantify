import 'package:flutter/material.dart';
import 'package:plantify/constants/constants.dart';
import 'package:plantify/plants/presentation/widgets/side_custom_painter.dart';

import 'bottom_custom_painter.dart';

class PlantsDetailsScreen extends StatefulWidget {
  const PlantsDetailsScreen(
      {super.key,
      required this.image,
      required this.price,
      required this.title,
      required this.counter});

  final String image;
  final int price;
  final String title;
  final int counter;

  @override
  State<PlantsDetailsScreen> createState() => _PlantsDetailsScreenState();
}

class _PlantsDetailsScreenState extends State<PlantsDetailsScreen> {
  var currentIndex = 0;
  late int count;
  @override
  void initState() {
    count = widget.counter;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 665,
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
                                              : Colors.black54
                                                  .withOpacity(0.15),
                                          borderRadius:
                                              BorderRadius.circular(50)),
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
                                          borderRadius:
                                              BorderRadius.circular(50)),
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
                                padding: const EdgeInsets.only(
                                    bottom: 20, right: 29),
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
                                      "€${widget.price * count}",
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
                  Positioned(
                    bottom: -78,
                    right: 83,
                    child: CustomPaint(
                      size: const Size(250, 100),
                      painter: RPSCustomPainterBottomContainer(),
                      child: SizedBox(
                        width: 230,
                        height: 90,
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
                      size: 38,
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
                      size: 38,
                    ),
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(0, 15),
                child: CustomPaint(
                  size: const Size(150, 59),
                  painter: RPSCustomPainterBottom(isWhite: false),
                  child: const SizedBox(
                    width: 190,
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.only(right: 0),
                      child: Center(
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
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

    // Circle

    Paint paint_fill_1 = Paint()
      ..color = secondaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4622000, size.height * 0.1045167);
    path_1.cubicTo(
        size.width * 0.6834083,
        size.height * 0.1260167,
        size.width * 0.7067250,
        size.height * -0.1322167,
        size.width * 0.7840667,
        size.height * 0.3975500);
    path_1.cubicTo(
        size.width * 0.8940167,
        size.height * 1.3639333,
        size.width * 0.5328167,
        size.height * 0.8379833,
        size.width * 0.4441417,
        size.height * 0.9046667);
    path_1.cubicTo(
        size.width * 0.3646250,
        size.height * 0.8685333,
        size.width * 0.0131500,
        size.height * 1.3011833,
        size.width * 0.1426333,
        size.height * 0.4233667);
    path_1.cubicTo(
        size.width * 0.2282000,
        size.height * -0.1441667,
        size.width * 0.2067417,
        size.height * 0.1455333,
        size.width * 0.4622000,
        size.height * 0.1045167);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Circle

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
