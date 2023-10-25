import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiphr_test/features/widget/screen%202/body_box.dart';
import 'package:swiphr_test/features/widget/screen%202/header2.dart';

class RateTrip extends StatelessWidget {
  const RateTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: 375.w,
              height: 812.h,
              decoration: const BoxDecoration(color: Color(0xff8F00FF)),
            ),
            const Header2(),
            const RateYourRide(),
          ],
        ),
      ),
    );
  }
}
