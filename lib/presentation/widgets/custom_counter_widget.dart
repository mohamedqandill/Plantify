import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class CustomCounter extends StatelessWidget {
  const CustomCounter({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: secondaryColor,
        radius: 10,
        child: FittedBox(
          child: Icon(icon),
        ),
      ),
    );
  }
}
