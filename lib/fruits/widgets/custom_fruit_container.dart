import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/constants.dart';
import '../screens/fruit_details_screen.dart';

class CustomFruitContainer extends StatelessWidget {
  const CustomFruitContainer(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const FruitDetailsScreen();
          },
        ));
      },
      child: Stack(
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
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const Row(
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
                      price,
                      style: const TextStyle(
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
              image,
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
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: const Icon(
                  Icons.arrow_forward,
                  size: 25,
                ),
              ))
        ],
      ),
    );
  }
}
