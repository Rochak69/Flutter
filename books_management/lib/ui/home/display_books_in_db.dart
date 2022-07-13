// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:books_management/database.dart';
import 'package:flutter/material.dart';

class DisplayBooksFromDB extends StatefulWidget {
  static String route = "/library";

  DisplayBooksFromDB({Key? key}) : super(key: key);

  @override
  State<DisplayBooksFromDB> createState() => _DisplayBooksFromDBState();
}

class _DisplayBooksFromDBState extends State<DisplayBooksFromDB> {
  late DB db;
  late Future<List<Books>> library;
  _DisplayBooksFromDBState() {
    db = DB();
    library = viewLibrary();
  }
  Future<List<Books>> viewLibrary() async {
    debugPrint("This is library");
    var allBooks = await db.queryAll();
    // ignore: avoid_print
    print(allBooks);
    return allBooks;
  }

  // Future<List<Books>> viewLibrary() async {
  List test = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Library"),
      ),
      body: ListView.builder(
          itemCount: test.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${test[index]}'),
            );
          }),
    );
  }
}
