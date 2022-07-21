// ignore_for_file: prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:books_management/database.dart';

class DisplayBooksFromDB extends StatefulWidget {
  static String route = "/library";

  DisplayBooksFromDB({Key? key}) : super(key: key);

  @override
  State<DisplayBooksFromDB> createState() => _DisplayBooksFromDBState();
}

class _DisplayBooksFromDBState extends State<DisplayBooksFromDB> {
  DB db = DB();
  var library;

  testDB() {
    db = DB();
    print(db.initDb());
    print(db.queryAll());
    library = viewLibrary();
    print(library);
  }

  Future<List<Books>> viewLibrary() async {
    debugPrint("This is library");

    var allBooks = await db.queryAll();

    //ignore: avoid_printz
    print(allBooks);
    return allBooks;
  }

  // Future<List<Books>> viewLibrary() async {
  List test = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    testDB();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Library"),
      ),
      body: ListView.builder(
          itemCount: test.length,
          itemBuilder: (context, index) {
            // List<Books> allbooks = viewLibrary();
            return ListTile(
              title: Text('${test[index]}'),
            );
          }),
    );
  }
}
