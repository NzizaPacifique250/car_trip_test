import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Text(
            'Trip Detail',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        SizedBox(
          child: Column(children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
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
                  const Text(
                    'Skate Park',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 20, color: Color(0xff656565)),
                  ),
                ],
              ),
            ),
            const Divider(),
          ]),
        )
      ],
    );
  }
}
