import 'package:flutter/material.dart';
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
            boxShadow: [],
          ),
          SizedBox(
              width: 60,
              height: 40,
              child: Image.asset('assets/logo.png', fit: BoxFit.fill)),
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset('assets/profile1.png', fit: BoxFit.fill),
          )
        ],
      ),
    );
  }
}
