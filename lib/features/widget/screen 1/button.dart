import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final Widget content;
  const Button({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 303.w,
        height: 64.h,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: content);
  }
}
