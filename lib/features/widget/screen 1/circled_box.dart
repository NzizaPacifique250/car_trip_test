import 'package:flutter/material.dart';

class CircledBox extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Color iconColor;
  final List<BoxShadow> boxShadow;

  const CircledBox(
      {super.key,
      required this.color,
      required this.icon,
      required this.boxShadow,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: color, boxShadow: boxShadow),
      child: Icon(
        icon,
        size: 30,
        color: iconColor,
      ),
    );
  }
}
