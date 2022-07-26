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
                        "Onboarding Screen 3",
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
                        position: 2,
                        decorator: DotsDecorator(activeColor: kColorPrimary),
                      )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
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
                                child: Text("Get Started")),
                          ),
                        ],
                      ),
                    ]),
              ),
              height: 100,
              decoration: const BoxDecoration(
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
