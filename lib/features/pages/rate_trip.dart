import 'package:flutter/material.dart';
import 'package:swiphr_test/features/widget/screen%202/body_box.dart';
import 'package:swiphr_test/features/widget/screen%202/header2.dart';
import 'package:swiphr_test/features/widget/screen%202/star_rate_box.dart';

class RateTrip extends StatelessWidget {
  const RateTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(color: Color(0xff8F00FF)),
            ),
            Header2(),
            RateYourRide(),
          ],
        ),
      ),
    );
  }
}
