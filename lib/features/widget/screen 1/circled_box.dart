import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      height: 40.h,
      width: 40.w,
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
