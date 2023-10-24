import 'package:flutter/material.dart';
import 'package:swiphr_test/features/widget/screen%201/button.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 40, right: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Details',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Trip expense',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                  Text(
                    '\$9,00',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Trip expense',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                  Text(
                    '\$9,00',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Trip expense',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300)),
                  Text(
                    '\$9,00',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(alignment: Alignment.bottomCenter, child: Button())
            ],
          ),
        ),
      ],
    );
  }
}
