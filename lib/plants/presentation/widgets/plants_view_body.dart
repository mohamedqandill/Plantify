import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:plantify/constants/constants.dart';
import 'package:plantify/plants/presentation/widgets/plants_details_view_body.dart';
import 'package:plantify/plants/presentation/widgets/side_custom_painter.dart';

import 'bottom_custom_painter.dart';
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
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return PlantsDetailsScreen(
                            title: titles[index],
                            price: prices[index],
                            counter: counts[index],
                            image: images[index],
                          );
                        },
                      ));
                    },
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
                                "€${prices[index]}",
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
                              size: const Size(90, 72),
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
        Row(
          children: [
            Transform.translate(
              offset: const Offset(-62, 0),
              child: CustomPaint(
                size: const Size(200, 90),
                painter: RPSCustomPainter(),
                child: const SizedBox(
                  width: 190,
                  height: 100,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(right: 2, top: 5),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                        color: Colors.black54,
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
                size: const Size(200, 90),
                painter: RPSCustomPainter(),
                child: const SizedBox(
                  width: 190,
                  height: 100,
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(right: 2, top: 5),
                      child: Icon(
                        Icons.arrow_back_ios_new,
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
        Transform.translate(
          offset: const Offset(0, 10),
          child: CustomPaint(
            size: const Size(200, 50),
            painter: RPSCustomPainterBottom(),
            child: const SizedBox(
              width: 180,
              height: 70,
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
List<int> prices = [
  78,
  35,
  15,
  100,
];
List<int> counts = [3, 2, 1, 2];
