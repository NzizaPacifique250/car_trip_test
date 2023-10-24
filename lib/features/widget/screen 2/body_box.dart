import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:swiphr_test/features/widget/screen%201/circled_box.dart';
import 'package:swiphr_test/features/widget/screen%202/payment_details.dart';
import 'package:swiphr_test/features/widget/screen%202/star_rate_box.dart';
import 'package:swiphr_test/features/widget/screen%202/trip_details.dart';

class RateYourRide extends StatelessWidget {
  const RateYourRide({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Align(
        child: Padding(
          padding: const EdgeInsets.only(top: 140),
          child: Container(
            width: sizingInformation.screenSize.width,
            height: sizingInformation.screenSize.height,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(40),
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ListTile(
                    leading: SizedBox(
                      width: 50,
                      height: 50,
                      child:
                          Image.asset('assets/profile2.png', fit: BoxFit.fill),
                    ),
                    title: const Text(
                      'Ben Stokes',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Row(children: [
                      Image.asset('assets/Star.png',
                          width: 18, height: 18, fit: BoxFit.fill),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        '4.9',
                        style:
                            TextStyle(fontSize: 18, color: Color(0xffC8C7CC)),
                      )
                    ]),
                    trailing: const CircledBox(
                        color: Color(0xff8F00FF),
                        icon: Icons.comment_outlined,
                        boxShadow: [],
                        iconColor: Colors.white),
                  ),
                ),
                StarRateBox(),
                SizedBox(
                  height: 30,
                ),
                TripDetails(),
                SizedBox(
                  height: 30,
                ),
                PaymentDetails()
              ],
            ),
          ),
        ),
      );
    });
  }
}
