import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/sign_in_screen.dart';

import '../constants/theme.dart';

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
      body: Container(
        height: height * 0.11,
        width: width,
        color: kColorAccent,
        child: Row(children: [
          Container(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignInScreen.name);
                  },
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg"),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignInScreen.name);
                  },
                  child: Image(
                      width: width * 0.5,
                      height: height * 0.065,
                      image: NetworkImage(
                          "https://s.mihnati.com/company_logos/06/79680115395868.jpg")),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignInScreen.name);
                  },
                  child: Icon(
                    notifications,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Packages"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Packages"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Packages"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Packages"),
      ]),
    );
  }
}
