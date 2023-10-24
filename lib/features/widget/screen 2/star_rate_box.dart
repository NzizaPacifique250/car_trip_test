import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StarRateBox extends StatelessWidget {
  StarRateBox({super.key});
  final TextEditingController message = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, SizingInformation) {
      return Container(
        width: SizingInformation.screenSize.width * .7,
        child: Column(
          children: [
            const Text(
              'How is your trip?',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Image.asset('assets/Star.png',
                      width: 46, height: 46, fit: BoxFit.fill),
                  const SizedBox(
                    width: 17,
                  ),
                  Image.asset('assets/Star.png',
                      width: 46, height: 46, fit: BoxFit.fill),
                  const SizedBox(
                    width: 17,
                  ),
                  Image.asset('assets/Star.png',
                      width: 46, height: 46, fit: BoxFit.fill),
                  const SizedBox(
                    width: 17,
                  ),
                  Image.asset('assets/Star.png',
                      width: 46, height: 46, fit: BoxFit.fill),
                  const SizedBox(
                    width: 17,
                  ),
                  Image.asset('assets/Star_2.png',
                      width: 46, height: 46, fit: BoxFit.fill)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 30),
              width: 800,
              child: TextFormField(
                controller: message,
                style: const TextStyle(
                  height: 2.0,
                  color: Colors.black,
                  fontSize: 18,
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  suffixIconColor: Colors.black,
                  hintText: "Write you feedback",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
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
    });
  }
}
