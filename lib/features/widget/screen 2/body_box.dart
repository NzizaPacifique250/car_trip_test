import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiphr_test/features/widget/screen%201/circled_box.dart';
import 'package:swiphr_test/features/widget/screen%202/payment_details.dart';
import 'package:swiphr_test/features/widget/screen%202/star_rate_box.dart';
import 'package:swiphr_test/features/widget/screen%202/trip_details.dart';

class RateYourRide extends StatelessWidget {
  const RateYourRide({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Padding(
        padding: const EdgeInsets.only(top: 140),
        child: Container(
          width: 376.w,
          height: 709.h,
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
                  leading: Image.asset('assets/profile2.png',
                      width: 40.w, height: 40.w, fit: BoxFit.fill),
                  title: Text(
                    'Ben Stokes',
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Row(children: [
                    Image.asset('assets/Star.png',
                        width: 16.w, height: 16.h, fit: BoxFit.fill),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '4.9',
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp, color: const Color(0xffC8C7CC)),
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
              const SizedBox(
                height: 30,
              ),
              const TripDetails(),
              const SizedBox(
                height: 30,
              ),
              const PaymentDetails()
            ],
          ),
        ),
      ),
    );
  }
}
