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
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Stack(children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.network(
              "https://www.krooqi.com/_next/static/images/spotlight-1-19b43e0e286ca0a3c3e97cdea2239e41.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: height * 0.58,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(children: [
                SizedBox(height: height * 0.06),
                Padding(
                  padding: EdgeInsets.all(width * 0.06),
                  child: Row(
                    children: const [
                      Text(
                        "Onboarding Screen 1",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.06, right: width * 0.06),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry but also the leap into changed. It was popularised in the 1960s",
                          style: TextStyle(fontSize: 17),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: width * 0.01)),
                        Center(
                            child: DotsIndicator(
                          dotsCount: 3,
                          position: 0,
                          decorator: const DotsDecorator(
                            activeColor: kColorPrimary,
                          ),
                        )),
                        Padding(padding: EdgeInsets.only(bottom: width * 0.13)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Skip",
                              style: TextStyle(fontSize: 17),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, OnBoardingScreen2.name);
                                },
                                child: Row(
                                  children: const [
                                    Text("Next",
                                        style: TextStyle(fontSize: 17)),
                                    Icon(Icons.arrow_right_alt_rounded),
                                  ],
                                )),
                          ],
                        ),
                      ]),
                ),
                const Icon(Icons.arrow_right_rounded),
              ]),
              //
            ),
          ),
        ]),
      ),
    );
  }
}
