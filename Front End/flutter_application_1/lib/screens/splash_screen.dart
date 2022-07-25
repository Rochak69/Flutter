import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

class SplashScreen extends StatelessWidget {
  static const name = '/3';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, LanguageScreen.name);
        },
        child: SizedBox(
          height: height,
          child: Image.network(
            "https://www.krooqi.com/_next/static/images/spotlight-1-19b43e0e286ca0a3c3e97cdea2239e41.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
