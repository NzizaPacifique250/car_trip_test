import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiphr_test/features/pages/rate_trip.dart';
import 'package:swiphr_test/features/widget/screen%201/button.dart';
import 'package:swiphr_test/features/widget/screen%201/circled_box.dart';

class RideOrderBox extends StatelessWidget {
  const RideOrderBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 376.w,
        height: 373.h,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(40),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(17, 0, 0, 0),
                blurRadius: 10,
                offset: Offset(0, -3),
              )
            ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose your ride',
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  const CircledBox(
                    color: Colors.white,
                    icon: Icons.chevron_left_outlined,
                    iconColor: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(21, 0, 0, 0),
                        offset: Offset(0, 5),
                        blurRadius: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
            const Divider(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      selectedColor: Colors.purple,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RateTrip()),
                        );
                      },
                      title: Text(
                        'Toyota Camry',
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        '2 - 3 person',
                        style: GoogleFonts.poppins(
                            color: const Color(0xff656565), fontSize: 12.sp),
                      ),
                      trailing: Text(
                        "\$7,00",
                        style: GoogleFonts.poppins(
                            fontSize: 16.sp, color: Colors.black),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: 375.w,
              height: 150.h,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(15, 0, 0, 0),
                    blurRadius: 10,
                    offset: Offset(0, -10))
              ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Cash',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w400)),
                            const SizedBox(
                              width: 5,
                            ),
                            Image.asset(
                              'assets/icon_down.png',
                              width: 12,
                              height: 12,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                        Container(
                          width: 128,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: const Color(0xffEDEDED),
                              border:
                                  Border.all(color: Colors.grey, width: .5)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    left: 15.0,
                                    right: 5),
                                child: Image.asset(
                                  'assets/%image.png',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const Text('Promo code'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Button(
                      content: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, left: 30.0, bottom: 8.0),
                              child: Text(
                                'Book this car',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16.sp),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '\$9,00',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.sp, color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 20.0),
                                  child: CircledBox(
                                      color: Colors.white,
                                      icon: Icons.chevron_right_outlined,
                                      boxShadow: [],
                                      iconColor: Colors.black),
                                ),
                              ],
                            )
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
