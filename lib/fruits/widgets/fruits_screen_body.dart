import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/constants.dart';

class FruitsScreenBody extends StatelessWidget {
  const FruitsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Transform.translate(
              offset: const Offset(-20, -20),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            width: 1, color: const Color(0xff383A3A)),
                        shape: BoxShape.circle),
                    child: Container(
                      width: 100,
                      height: 100,
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              width: 1, color: const Color(0xff716D3E)),
                          shape: BoxShape.circle),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                                width: 2, color: const Color(0xff716D3E)),
                            shape: BoxShape.circle),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/person.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: -90,
                    right: 25,
                    child: Column(
                      children: [
                        Text(
                          "Exotic",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Text(
                          "fruits",
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w400,
                              color: fruitgreenColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(right: 25),
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
                            color: Colors.black),
                      ),
                      Text("Products",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
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
        const Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 25, right: 50),
            child: Text(
              "See more",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: fruitgreenColor),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 80),
                  child: Container(
                    width: 160,
                    height: 180,
                    decoration: const BoxDecoration(
                        color: fruitSecondaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(70),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pitaya",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "Premium",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: fruitgreenColor),
                              ),
                              FaIcon(
                                FontAwesomeIcons.crown,
                                color: fruitgreenColor,
                                size: 15,
                              )
                            ],
                          ),
                          Text(
                            "€4.95",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  child: Image.asset(
                    "assets/images/pitaya.png",
                    width: 140,
                    height: 140,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 25,
                      ),
                    ))
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 80),
                  child: Container(
                    width: 160,
                    height: 180,
                    decoration: const BoxDecoration(
                        color: fruitSecondaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(70),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Papaya",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                "Premium",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: fruitgreenColor),
                              ),
                              FaIcon(
                                FontAwesomeIcons.crown,
                                color: fruitgreenColor,
                                size: 15,
                              )
                            ],
                          ),
                          Text(
                            "€4.95",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  child: Image.asset(
                    "assets/images/papaya.png",
                    width: 140,
                    height: 140,
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.arrow_forward,
                        size: 25,
                      ),
                    ))
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Offers",
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Text(
                "See more",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: fruitgreenColor),
              ),
            ],
          ),
        ),
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Container(
                  width: 350,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: fruitSecondaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(70),
                      )),
                  child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/guava.png",
                            width: 100,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Guava",
                                style: TextStyle(
                                    fontSize: 29,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Premium",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: fruitgreenColor),
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
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "€2.95",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                "€2.00",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 25,
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
