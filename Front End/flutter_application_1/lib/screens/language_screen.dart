import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

class LanguageScreen extends StatelessWidget {
  static const name = "asd";
  const LanguageScreen({Key? key}) : super(key: key);

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
              child: Column(children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Choose your language",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: Card(
                    child: Row(
                      children: [
                        CircleAvatar(),
                        Text('Arabic'),
                        Icon(Icons.arrow_right_rounded),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, OnBoardingScreen.name);
                    },
                    child: Card(
                      child: Row(
                        children: [
                          CircleAvatar(),
                          Text('English'),
                          Icon(Icons.arrow_right_rounded),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
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
