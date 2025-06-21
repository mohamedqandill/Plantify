import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/constants.dart';
import '../widgets/packs_painter.dart';

class FruitDetailsScreen extends StatefulWidget {
  const FruitDetailsScreen({super.key});

  @override
  State<FruitDetailsScreen> createState() => _FruitDetailsScreenState();
}

class _FruitDetailsScreenState extends State<FruitDetailsScreen> {
  var selectedPack = 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/pitayabg.png",
              ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(
                          Icons.arrow_back,
                          size: 25,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Text(
                          "Premium",
                          style: TextStyle(
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.bold,
                              color: fruitgreenColor),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        FaIcon(
                          FontAwesomeIcons.crown,
                          color: fruitgreenColor,
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "10",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.none,
                                color: Colors.black),
                          ),
                          Text("Products",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                  fontSize: 17,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -20,
                      left: 30,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.bagShopping,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Exotic Fruits",
              style: TextStyle(
                  fontSize: 43,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Pitaya",
              style: TextStyle(
                  fontSize: 40,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            width: 180,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(width: 2, color: fruitgreenColor)),
            child: const Center(
              child: Text(
                "Nutrition",
                style: TextStyle(
                    fontSize: 20,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.bold,
                    color: fruitgreenColor),
              ),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 7,
                  backgroundColor: fruitgreenColor,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "SELECT \nQUANTITY",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Transform.translate(
                offset: const Offset(-40, 20),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 250,
                      height: 250,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(width: 2, color: Colors.white)),
                      child: Transform.translate(
                        offset: const Offset(20, 40),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2, color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "€${selectedPack * 4.25}",
                                    style: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "$selectedPack pack",
                                    style: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: selectedPack == 1
                                  ? -80
                                  : selectedPack == 5
                                      ? -40
                                      : 30,
                              right: selectedPack == 1
                                  ? -55
                                  : selectedPack == 5
                                      ? -100
                                      : -120,
                              child: Transform.rotate(
                                angle: selectedPack == 1
                                    ? 0
                                    : selectedPack == 5
                                        ? 92
                                        : 96,
                                child: CustomPaint(
                                  size: const Size(200, 100),
                                  painter: PacksCustomPainter(),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 100,
                      top: -20,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedPack = 1;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selectedPack == 1
                                  ? Colors.white
                                  : Colors.grey),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "pack",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 40,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedPack = 5;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selectedPack == 5
                                  ? Colors.white
                                  : Colors.grey),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "5",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "pack",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -10,
                      top: 150,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedPack = 10;
                          });
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selectedPack == 10
                                  ? Colors.white
                                  : Colors.grey),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "10",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "pack",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Container(
                  width: 100,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.cartPlus,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text("Add to \nOrder",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                fontSize: 17,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
