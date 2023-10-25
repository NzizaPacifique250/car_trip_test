import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375.w,
      height: 151.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              'Trip Detail',
              style: GoogleFonts.poppins(
                  fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 5),
                child: SizedBox(
                  width: 375.w,
                  height: 56.h,
                  child: Row(
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        decoration: const BoxDecoration(
                            color: Color(0xff8F00FF), shape: BoxShape.circle),
                        child: Center(
                          child: Container(
                            height: 11,
                            width: 11,
                            decoration: const BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Skate Park',
                        style: GoogleFonts.poppins(
                            fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                  padding: EdgeInsets.only(top: 75), child: Divider()),
              const Padding(
                  padding: EdgeInsets.only(top: 150), child: Divider()),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 80),
                  child: SizedBox(
                    width: 375.w,
                    height: 56.h,
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Colors.red,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Home',
                          style: GoogleFonts.poppins(
                              fontSize: 20, color: const Color(0xff656565)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(),
            ]),
          )
        ],
      ),
    );
  }
}
