import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/top_bar.dart';
import '../constants/theme.dart';
import '../constants/bottom_nav_bar.dart';

class PackagesScreen extends StatelessWidget {
  static const name = '8';

  const PackagesScreen({Key? key}) : super(key: key);
  int getIndex() {
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        const TopBar(),
        SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Text(
                "A",
                style: TextStyle(fontSize: 100),
              ),
              Text(
                "A",
                style: TextStyle(fontSize: 100),
              ),
              Text(
                "A",
                style: TextStyle(fontSize: 100),
              ),
              Text(
                "A",
                style: TextStyle(fontSize: 100),
              ),
              Text(
                "A",
                style: TextStyle(fontSize: 100),
              ),
              Text(
                "A",
                style: TextStyle(fontSize: 100),
              ),
              Text(
                "A",
                style: TextStyle(fontSize: 100),
              )
            ],
          )),
        )
      ]),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
