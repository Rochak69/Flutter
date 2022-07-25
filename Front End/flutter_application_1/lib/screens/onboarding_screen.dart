import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../constants/theme.dart';
import 'screens.dart';

class OnBoardingScreen extends StatelessWidget {
  static const name = '5';
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        child: Stack(children: [
          Image.network(
            "https://www.krooqi.com/_next/static/images/spotlight-1-19b43e0e286ca0a3c3e97cdea2239e41.jpg",
            fit: BoxFit.fitHeight,
          ),
          Positioned(
            top: height * 0.40,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Onboarding Screen 1",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                          "asfasdfasdfasdffffffffffffffffffffffffffffffffffffasdfasdf"),
                      Center(
                          child: DotsIndicator(
                        dotsCount: 3,
                        decorator: DotsDecorator(activeColor: kColorPrimary),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Skip"),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, OnBoardingScreen2.name);
                              },
                              child: Row(
                                children: [
                                  Text("Next"),
                                  Icon(Icons.arrow_right_alt_rounded),
                                ],
                              )),
                        ],
                      ),
                    ]),
              ),
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
            ),
          ),
        ]),
      ),
    );
  }
}
