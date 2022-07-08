import 'package:books_management/Database.dart';
import 'package:flutter/material.dart';
class BookStore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Store'),
      ),
      body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: null,
                  child: Text('Insert'))
            ],

    )

    ));
  }
}