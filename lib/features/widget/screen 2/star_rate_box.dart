import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StarRateBox extends StatelessWidget {
  StarRateBox({super.key});
  final TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 303.w,
      height: 160.h,
      child: Column(
        children: [
          Text(
            'How is your trip?',
            style: GoogleFonts.poppins(
                fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 66),
            child: Row(
              children: [
                Image.asset('assets/Star.png',
                    width: 36.w, height: 36.h, fit: BoxFit.fill),
                const SizedBox(
                  width: 17,
                ),
                Image.asset('assets/Star.png',
                    width: 36.w, height: 36.h, fit: BoxFit.fill),
                const SizedBox(
                  width: 17,
                ),
                Image.asset('assets/Star.png',
                    width: 36.w, height: 36.h, fit: BoxFit.fill),
                const SizedBox(
                  width: 17,
                ),
                Image.asset('assets/Star.png',
                    width: 36.w, height: 36.h, fit: BoxFit.fill),
                const SizedBox(
                  width: 17,
                ),
                Image.asset('assets/Star_2.png',
                    width: 36.w, height: 36.h, fit: BoxFit.fill)
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, top: 30),
            width: 303.w,
            height: 82.h,
            child: TextFormField(
              controller: message,
              style: GoogleFonts.poppins(
                height: 2.0,
                color: Colors.black,
                fontSize: 14.sp,
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white38,
                suffixIconColor: Colors.black,
                hintText: "Write you feedback",
                hintStyle: GoogleFonts.poppins(color: Colors.grey),
                contentPadding: const EdgeInsets.all(20),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.black, width: 1),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.5),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                focusColor: Colors.white,
              ),
              obscureText: false,
            ),
          ),
        ],
      ),
    );
  }
}
