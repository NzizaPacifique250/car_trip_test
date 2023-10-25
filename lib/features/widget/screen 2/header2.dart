import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiphr_test/features/widget/screen%201/circled_box.dart';

class Header2 extends StatelessWidget {
  const Header2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 43.h,
        left: 36.w,
      ),
      child: SizedBox(
        width: 216.w,
        height: 40.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const CircledBox(
                  color: Colors.white,
                  icon: Icons.close,
                  boxShadow: [],
                  iconColor: Colors.black),
            ),
            Text(
              'Rate your ride',
              style: GoogleFonts.poppins(
                  fontSize: 18.sp,
                  color: const Color(0xffFFFFFF),
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
