import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        height: 500,
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
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose your ride',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                  CircledBox(
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
                          MaterialPageRoute(builder: (context) => RateTrip()),
                        );
                      },
                      title: const Text(
                        'Toyota Camry',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        '2 - 3 person',
                        style:
                            TextStyle(color: Color(0xff656565), fontSize: 17),
                      ),
                      trailing: const Text(
                        "\$7,00",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 180,
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
                            const Text('Cash',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400)),
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
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Button(),
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
