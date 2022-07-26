import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/otp_verification_screen.dart';

class SignInScreen extends StatelessWidget {
  static const name = '/2';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorAccent,
        title: Text(
          "Sign In",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            child: Image.network(
                "https://www.krooqi.com/_next/static/images/spotlight-1-19b43e0e286ca0a3c3e97cdea2239e41.jpg",
                fit: BoxFit.cover),
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
                      "Welcome to KROOQIO",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Padding(padding: const EdgeInsets.all(3)),
                    Text("Sign in/Sign up with your Phone number"),
                    Padding(padding: const EdgeInsets.all(15)),
                    Text("Phone number"),
                    Padding(padding: const EdgeInsets.all(5)),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25)),
                      child: Wrap(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                hintText: "Enter you phone number"),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(35)),
                    Center(
                      child: SizedBox(
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
                                Navigator.pushNamed(
                                    context, OtpVerificationScreen.name);
                              },
                              child: Text("Sign IN"))),
                    ),
                    Padding(padding: const EdgeInsets.all(5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        Text(
                          "Sign Up",
                          style: TextStyle(color: kColorPrimary),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
