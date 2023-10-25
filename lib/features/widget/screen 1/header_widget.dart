import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiphr_test/features/utils/utils.dart';
import 'package:swiphr_test/features/widget/screen%201/circled_box.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircledBox(
            color: purpleColor,
            icon: Icons.menu_rounded,
            iconColor: Colors.white,
            boxShadow: const [],
          ),
          SizedBox(
              width: 45.23.w,
              height: 30.h,
              child: Image.asset('assets/logo.png', fit: BoxFit.fill)),
          SizedBox(
            width: 40.w,
            height: 40.h,
            child: Image.asset('assets/profile1.png', fit: BoxFit.fill),
          )
        ],
      ),
    );
  }
}
