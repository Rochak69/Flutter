import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/dashboard_screen.dart';

class OtpVerificationScreen extends StatelessWidget {
  static const name = 'ASDas';
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: kColorAccent,
        title: Text(
          "Verify",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(children: [
        Container(
          height: height,
          child: Image.network(
            "https://www.krooqi.com/_next/static/images/spotlight-1-19b43e0e286ca0a3c3e97cdea2239e41.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: height * 0.45,
          right: 0,
          left: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Verify your account",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("aasdasdASasA"),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Flexible(child: TextField()),
                        SizedBox(
                          width: 9,
                        ),
                        Flexible(child: TextField()),
                        SizedBox(
                          width: 9,
                        ),
                        Flexible(child: TextField()),
                        SizedBox(
                          width: 9,
                        ),
                        Flexible(child: TextField()),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Code will expire on"),
                        SizedBox(
                          width: 5,
                        ),
                        Text("0:22"),
                      ],
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    Container(
                      height: 50,
                      width: 320,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  //to set border radius to button
                                  borderRadius: BorderRadius.circular(30)),
                              primary: kColorPrimary,
                              onPrimary: Colors.white),
                          onPressed: () {
                            Navigator.pushNamed(context, DashBoard.name);
                          },
                          child: Text("Verify")),
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn't recieve the code?"),
                        Text(
                          'Resend Code',
                          style: TextStyle(color: kColorPrimary),
                        )
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ]),
    );
  }
}
