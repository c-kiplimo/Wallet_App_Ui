// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_ui/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pageController
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          //app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      'My',
                      // ignore: prefer_const_constructors
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' Cards',
                      // ignore: prefer_const_constructors
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),

                //plus
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.grey[400], shape: BoxShape.circle),
                    child: Icon(Icons.add)),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 5250.20,
                  cardNumber: 12345678,
                  expirymonth: 10,
                  expiryYear: 24,
                  color: Colors.deepPurple[300],
                ),
                MyCard(
                  balance: 3250.70,
                  cardNumber: 12345678,
                  expirymonth: 11,
                  expiryYear: 26,
                  color: Colors.blue[300],
                ),
                MyCard(
                  balance: 5230.60,
                  cardNumber: 12345678,
                  expirymonth: 12,
                  expiryYear: 25,
                  color: Colors.green[300],
                ),
              ],
            ),
          ),
          SizedBox(height: 25,),
          SmoothPageIndicator(controller: _controller, count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: Colors.grey.shade700,
          ),),
           SizedBox(height: 25,),
          Row(
            children: [
              Container(child: Center(child: Image.asset('lib/') ),)
            ],
          )
        ]),
      ),
    );
  }
}
