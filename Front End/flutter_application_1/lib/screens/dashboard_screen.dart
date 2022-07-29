import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/top_bar.dart';

import 'package:flutter_application_1/screens/screens.dart';

import 'package:flutter_application_1/constants/bottom_nav_bar.dart';

import '../constants/theme.dart';

class DashBoard extends StatefulWidget {
  static const name = '2';
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.white,
                height: height * 2,
                width: width,
                child: Column(
                  children: [
                    const TopBar(),
                    SingleChildScrollView(
                      child: Container(
                          height: height * 0.47,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            // border: Border.all(color: Colors.black),
                          ),
                          child: GridView.count(
                            childAspectRatio: 1.05,
                            padding: const EdgeInsets.all(15),
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            primary: false,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SignInScreen.name);
                                },
                                child: Container(
                                  height: height * 0.1,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          offset:
                                              const Offset(0.0, 0.0), //(x,y)
                                          blurRadius: 5,
                                          spreadRadius: 0.001),
                                    ],
                                  ),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: const [
                                        Icon(
                                          Icons.home_outlined,
                                          size: 60,
                                        ),
                                        Text(
                                          "70",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Total Views",
                                          style: TextStyle(
                                              color: kColorPrimary,
                                              fontSize: 15),
                                        )
                                      ]),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SignInScreen.name);
                                },
                                child: Container(
                                  height: height * 0.1,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          offset:
                                              const Offset(0.0, 1.0), //(x,y)
                                          blurRadius: 10,
                                          spreadRadius: 0.1),
                                    ],
                                  ),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: const [
                                        Icon(
                                          Icons.contact_mail_outlined,
                                          size: 60,
                                        ),
                                        Text(
                                          "170",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Total Contacts",
                                          style: TextStyle(
                                              color: kColorPrimary,
                                              fontSize: 15),
                                        )
                                      ]),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SignInScreen.name);
                                },
                                child: Container(
                                  height: height * 0.1,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          offset:
                                              const Offset(0.0, 1.0), //(x,y)
                                          blurRadius: 10,
                                          spreadRadius: 0.1),
                                    ],
                                  ),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: const [
                                        Icon(
                                          Icons.house_outlined,
                                          size: 60,
                                        ),
                                        Text(
                                          "70/75",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Published Properties",
                                          style: TextStyle(
                                              color: kColorPrimary,
                                              fontSize: 15),
                                        )
                                      ]),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SignInScreen.name);
                                },
                                child: Container(
                                  height: height * 0.1,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          offset:
                                              const Offset(0.0, 1.0), //(x,y)
                                          blurRadius: 10,
                                          spreadRadius: 0.1),
                                    ],
                                  ),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: const [
                                        Icon(
                                          Icons.pie_chart_outline_outlined,
                                          size: 60,
                                        ),
                                        Text(
                                          "45%",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Average listing rate",
                                          style: TextStyle(
                                              color: kColorPrimary,
                                              fontSize: 15),
                                        )
                                      ]),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: width * 0.01,
                          bottom: width * 0.04,
                          left: width * 0.04,
                          right: width * 0.04),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, SignInScreen.name);
                        },
                        child: Container(
                          height: height * 0.109,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    offset: const Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 10,
                                    spreadRadius: 0.1),
                              ],
                              borderRadius: BorderRadius.circular(25)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: width * 0.04,
                                left: width * 0.08,
                                bottom: width * 0.04),
                            child: Row(children: [
                              const Icon(
                                Icons.message_outlined,
                                size: 60,
                              ),
                              Padding(padding: EdgeInsets.all(width * 0.01)),
                              Column(
                                children: const [
                                  Text(
                                    "10/12",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "New Messages",
                                    style: TextStyle(
                                        fontSize: 15, color: kColorPrimary),
                                  )
                                ],
                              )
                            ]),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        width: width,
                        height: height,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                offset: const Offset(0.0, 1.0), //(x,y)
                                blurRadius: 10,
                                spreadRadius: 0.1),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(width * 0.05),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: width * 0.03)),
                                    const Text("Most viewed Properties",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.all(width * 0.02)),
                                Padding(
                                  padding: EdgeInsets.all(width * 0.02),
                                  child: Container(
                                      width: width,
                                      height: height * 0.8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              offset: const Offset(
                                                  0.0, 1.0), //(x,y)
                                              blurRadius: 10,
                                              spreadRadius: 0.1),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
