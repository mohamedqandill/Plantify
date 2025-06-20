import 'package:flutter/material.dart';
import 'package:plantify/constants/constants.dart';
import 'package:plantify/presentation/screens/plants_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            primaryColor,
            Color(0xFF669261),
            fruitPrimaryColor,
          ],
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const PlantsScreen();
                },
              ));
            },
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  border: Border.all(width: 8, color: secondaryColor),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/sanseviria.png",
                    height: 150,
                  ),
                  const Text(
                    "Plants",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                border: Border.all(width: 8, color: fruitSecondaryColor),
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/pitaya.png",
                  height: 150,
                ),
                const Text(
                  "Fruits",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
