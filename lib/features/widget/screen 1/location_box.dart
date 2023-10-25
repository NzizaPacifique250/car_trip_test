import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TripRoad extends StatelessWidget {
  const TripRoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 50,
      top: 120,
      child: Container(
        width: 302.w,
        height: 83.h,
        decoration: BoxDecoration(
            color: Colors.white60, borderRadius: BorderRadius.circular(20)),
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    height: 16.w,
                    width: 16.h,
                    decoration: const BoxDecoration(
                        color: Color(0xff8F00FF), shape: BoxShape.circle),
                    child: Center(
                      child: Container(
                        height: 8.w,
                        width: 8.h,
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
                        fontSize: 14.sp, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(children: [
                Container(
                    padding: const EdgeInsets.only(left: 30),
                    width: 300,
                    height: 1,
                    child: const Divider()),
                Container(
                  width: 90,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffEDEDED),
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(color: const Color(0xffCACACA), width: .5),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              color: Color(0xffCACACA), shape: BoxShape.circle),
                          child: const Icon(
                            Icons.add_sharp,
                            size: 15,
                            weight: 90,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Text('Add'),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
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
                        fontSize: 14.sp, color: const Color(0xff656565)),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
