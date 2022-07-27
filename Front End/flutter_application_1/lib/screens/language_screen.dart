import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

class LanguageScreen extends StatelessWidget {
  static const name = "asd";
  const LanguageScreen({Key? key}) : super(key: key);

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
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: width * 0.06)),
                    const Text(
                      "Choose your language",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.055,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://thumbs.dreamstime.com/z/united-arab-emirates-flag-waving-fabric-texture-united-arab-emirates-flag-waving-fabric-texture-flag-blowing-wind-154417101.jpg")),
                            Padding(padding: EdgeInsets.all(width * 0.01)),
                            const Text(
                              'Arabic',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ],
                        ),
                        const Icon(Icons.arrow_right_rounded),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 38.0, vertical: 15.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, OnBoardingScreen.name);
                    },
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://cdn.pixabay.com/photo/2015/11/06/13/29/union-jack-1027898_960_720.jpg"),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(left: width * 0.02)),
                              const Text(
                                'English',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),

                          const Icon(Icons.arrow_right_rounded),
                          // TextField(
                          //   decoration: InputDecoration(hintText: 'sasaas'),
                          // )
                        ],
                      ),
                    ),
                  ),
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
