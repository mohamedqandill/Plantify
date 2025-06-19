import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../widgets/plants_view_body.dart';

class PlantsScreen extends StatelessWidget {
  const PlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Decorative Flowers",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,
          size: 30,
        ),
        actions: const [
          Icon(Icons.list_sharp, color: Colors.white, size: 30),
          SizedBox(
            width: 10,
          )
        ],
      ),
      backgroundColor: primaryColor,
      body: const PlantsViewBody(),
    );
  }
}
