import 'package:flutter/material.dart';
class BookStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Store'),
      ),
      body: Center(
          child: Text(
            "HI",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )),
    );
  }
}