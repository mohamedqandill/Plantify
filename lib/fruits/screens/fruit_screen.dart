import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plantify/constants/constants.dart';

import '../widgets/fruits_screen_body.dart';

class FruitScreen extends StatefulWidget {
  const FruitScreen({super.key});

  @override
  State<FruitScreen> createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: fruitPrimaryColor,
        body: const FruitsScreenBody(),
        bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CustomNavigationBar(
                      currentIndex: currentIndex,
                      isFloating: true,
                      iconSize: 35,
                      elevation: 40,
                      scaleCurve: Curves.easeOut,
                      bubbleCurve: Curves.linear,
                      borderRadius: const Radius.circular(50),
                      selectedColor: Colors.white,
                      unSelectedColor: Colors.grey,
                      backgroundColor: Colors.black,
                      onTap: (value) {
                        setState(() {
                          currentIndex = value;
                        });
                      },
                      items: [
                        CustomNavigationBarItem(
                          title: const Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                          icon: Transform.translate(
                            offset: const Offset(0, -10),
                            child: const FaIcon(FontAwesomeIcons.house),
                          ),
                        ),
                        CustomNavigationBarItem(
                          title: const Text(
                            "Search",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                          icon: Transform.translate(
                            offset: const Offset(0, -10),
                            child:
                                const FaIcon(FontAwesomeIcons.magnifyingGlass),
                          ),
                        ),
                        CustomNavigationBarItem(
                          title: const Text(
                            "Premium",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                          icon: Transform.translate(
                            offset: const Offset(0, -10),
                            child: const FaIcon(
                              FontAwesomeIcons.crown,
                            ),
                          ),
                        ),
                      ],
                    )))));
  }
}
