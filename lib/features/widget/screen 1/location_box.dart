import 'package:flutter/material.dart';

class TripRoad extends StatelessWidget {
  const TripRoad({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 50,
      top: 120,
      child: Container(
        width: 450,
        height: 120,
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
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(15.0),
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
          )
        ]),
      ),
    );
  }
}
