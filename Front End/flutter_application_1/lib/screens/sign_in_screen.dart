import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/screens/otp_verification_screen.dart';

class SignInScreen extends StatelessWidget {
  static const name = '/2';
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorAccent,
        title: const Text(
          "Sign In",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
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
                      height: height * 0.02,
                    ),
                    const Text(
                      "Welcome to KROOQIO",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Padding(padding: EdgeInsets.all(height * 0.001)),
                    const Text("Sign in/Sign up with your Phone number",
                        style: TextStyle(fontSize: 15)),
                    Padding(padding: EdgeInsets.all(height * 0.02)),
                    const Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(padding: EdgeInsets.all(height * 0.01)),
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: height * 0.07,
                      width: width,
                      child: Card(
                        child: Row(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0), //or 15.0
                            child: SizedBox(
                                width: width * 0.2,
                                child: Image.network(
                                    "https://thumbs.dreamstime.com/z/united-arab-emirates-flag-waving-fabric-texture-united-arab-emirates-flag-waving-fabric-texture-flag-blowing-wind-154417101.jpg")),
                          ),
                          const Text(
                            "+966",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          const VerticalDivider(
                            width: 20,
                            thickness: 1,
                            endIndent: 0,
                            color: Colors.grey,
                          ),
                          const Flexible(
                              child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Enter your phone number")))
                        ]),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(height * 0.03)),
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
                              child: const Text("Sign In"))),
                    ),
                    Padding(padding: EdgeInsets.all(height * 0.01)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
