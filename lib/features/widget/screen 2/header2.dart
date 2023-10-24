import 'package:flutter/material.dart';
import 'package:swiphr_test/features/widget/screen%201/circled_box.dart';

class Header2 extends StatelessWidget {
  const Header2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        left: 60,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: CircledBox(
                color: Colors.white,
                icon: Icons.close,
                boxShadow: [],
                iconColor: Colors.black),
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            'Rate your ride',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                color: Color(0xffFFFFFF),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
