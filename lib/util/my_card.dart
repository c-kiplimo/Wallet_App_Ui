// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expirymonth;
  final int expiryYear;
  final color;
  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expirymonth,
    required this.expiryYear,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Balance',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$5,250.20',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              //card number
              Text(
                '**** 3456',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              // card expiry date
              Text(
                '10/24',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
