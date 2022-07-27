import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/sign_in_screen.dart';

import '../constants/theme.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashBoard extends StatelessWidget {
  static const name = '2';
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    const IconData notifications =
        IconData(0xe44f, fontFamily: 'MaterialIcons');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.white,
                height: height,
                width: width,
                child: Column(
                  children: [
                    Container(
                      height: height * 0.11,
                      width: width,
                      color: kColorAccent,
                      child: Row(children: [
                        SizedBox(
                          width: width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SignInScreen.name);
                                },
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg"),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SignInScreen.name);
                                },
                                child: Image(
                                    width: width * 0.5,
                                    height: height * 0.065,
                                    image: const NetworkImage(
                                        "https://s.mihnati.com/company_logos/06/79680115395868.jpg")),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SignInScreen.name);
                                },
                                child: const Icon(
                                  notifications,
                                  size: 30,
                                ),
                              )
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Container(
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
                                Navigator.pushNamed(context, SignInScreen.name);
                              },
                              child: Container(
                                height: height * 0.1,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(color: Colors.grey)),
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
                                            color: kColorPrimary, fontSize: 15),
                                      )
                                    ]),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, SignInScreen.name);
                              },
                              child: Container(
                                height: height * 0.1,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(color: Colors.grey)),
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
                                            color: kColorPrimary, fontSize: 15),
                                      )
                                    ]),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, SignInScreen.name);
                              },
                              child: Container(
                                height: height * 0.1,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(color: Colors.grey)),
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
                                            color: kColorPrimary, fontSize: 15),
                                      )
                                    ]),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, SignInScreen.name);
                              },
                              child: Container(
                                height: height * 0.1,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(color: Colors.grey)),
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
                                            color: kColorPrimary, fontSize: 15),
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        )),
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
                              border: Border.all(color: Colors.grey),
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
                    const Text("Most viewed Properties",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: kColorAccent, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.backpack_outlined,
          ),
          label: "Packages",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined), label: "Enquries"),
        BottomNavigationBarItem(
            icon: Icon(Icons.house_outlined), label: "Properties"),
        BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: "Agent"),
      ]),
    );
  }
}
