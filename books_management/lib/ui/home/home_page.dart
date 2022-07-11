import 'package:books_management/Database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static String route = "/home";

  // HomePage({Key? key}) : super(key: key) {
  //   db = DB();
  // }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DB db = DB();
  _HomePageState({Key? key}) {
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
            const ElevatedButton(onPressed: null, child: Text('Update a Book')),
            const ElevatedButton(onPressed: null, child: Text('Delete Book')),
          ],
        )));
  }

  nagivateToInsertPage() {
    Navigator.pushNamed(context, '/second');
  }

  Future<void> showDataFromDB() async {
    print("showing books............");
    var allBooks = await db.queryAll();
    print(allBooks);
  }
}
