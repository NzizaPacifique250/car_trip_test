import 'package:flutter/material.dart';
import 'package:swiphr_test/features/widget/screen%201/circled_box.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 74,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.0, left: 30.0, bottom: 8.0),
              child: Text(
                'Book this car',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Row(
              children: [
                Text(
                  '\$9,00',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
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
    );
  }
}
