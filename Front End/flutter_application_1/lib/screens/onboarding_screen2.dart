import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/otp_verification_screen.dart';

class OnBoardingScreen2 extends StatelessWidget {
  static const name = '6';
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send),
          onPressed: () {
            Navigator.pushNamed(context, OtpVerificationScreen.name);
          }),
    );
  }
}
