import 'package:books_management/database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String route = "/home";

  // ignore: prefer_const_constructors_in_immutables
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DB db = DB();
  _HomePageState() {
    db = DB();
  }

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
                onPressed: nagivateToInsertPage,
                child: const Text('Insert Book')),
            ElevatedButton(
                onPressed: showDataFromDB, child: const Text('Show Books')),
            ElevatedButton(
                onPressed: updateBookFromID,
                child: const Text('Update a Book')),
            ElevatedButton(
                onPressed: deleteBookFromName,
                child: const Text('Delete Book')),
          ],
        )));
  }

  nagivateToInsertPage() {
    Navigator.pushNamed(context, '/second');
  }

  deleteBookFromName() {
    db.deleteBook(0);
  }

  updateBookFromID() {
    var book = Books(
        id: 0,
        name: ' Bible',
        author: 'Rochak',
        category: 'Codeware',
        price: '69');
    db.updateBook(book);
  }

  Future<void> showDataFromDB() async {
    debugPrint("showing books............");
    var allBooks = await db.queryAll();
    // ignore: avoid_print
    print(allBooks);
  }
}
