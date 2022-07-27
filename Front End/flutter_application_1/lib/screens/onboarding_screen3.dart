import 'package:flutter/material.dart';
import '../constants/theme.dart';
import 'screens.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingScreen3 extends StatelessWidget {
  static const name = '7';
  const OnBoardingScreen3({Key? key}) : super(key: key);

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
                        "Onboarding Screen 3",
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
                          position: 2,
                          decorator: const DotsDecorator(
                            activeColor: kColorPrimary,
                          ),
                        )),
                        Padding(padding: EdgeInsets.only(bottom: width * 0.05)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 320,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          //to set border radius to button
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      primary: kColorPrimary,
                                      onPrimary: Colors.white),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, SignInScreen.name);
                                  },
                                  child: const Text("Get Started")),
                            ),
                          ],
                        ),
                      ]),
                ),
              ]),
              //
            ),
          ),
        ]),
      ),
    );
  }
}
