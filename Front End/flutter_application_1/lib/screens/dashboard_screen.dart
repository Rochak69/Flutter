import 'package:flutter/material.dart';

import '../constants/theme.dart';

class DashBoard extends StatelessWidget {
  static const name = '2';
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(),
        ),
        title: CircleAvatar(),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_rounded))
        ],
        automaticallyImplyLeading: false,
        backgroundColor: kColorAccent,
        elevation: 0,
      ),
      backgroundColor: kColorAccent,
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24))),
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
