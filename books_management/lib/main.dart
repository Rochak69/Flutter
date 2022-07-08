
import 'package:flutter/material.dart';
import 'package:books_management/BookStore.dart';
import 'package:sqflite/sqflite.dart';

import 'package:path/path.dart' ;
import 'package:flutter/widgets.dart';
import './Database.dart';




void main () async {
  // WidgetsFlutterBinding.ensureInitialized();
  //  final database = openDatabase(
  //     join(await getDatabasesPath(), 'book_database.db'),
  //     onCreate: (db, version) {
  // return db.execute(
  // 'CREATE TABLE books(bookId INTEGER PRIMARY KEY, name TEXT');
  // },
  // version: 1,
  // );

  // Future<void> insertBook(Book book) async{
  //   final db= await database;
  //   await db.insert(
  //     'books',
  //     book.toMap(),
  //     conflictAlgorithm: ConflictAlgorithm.replace,
  //   );
  // }

  // var harryPotter= Book(
  //   bookId: 0,
  //   name: 'Rochak',
  //   price: 100,
  //   category: 'fiction',
  //   author: 'Codeware',
  // );
  // await insertBook(harryPotter);

  // Future<List<Book>> books() async {
  //   // Get a reference to the database.
  //   final db = await database;
  //
  //   // Query the table for all The Dogs.
  //   final List<Map<String, dynamic>> maps = await db.query('books');
  //
  //   // Convert the List<Map<String, dynamic> into a List<Book>.
  //   return List.generate(maps.length, (i) {
  //     return Book(
  //       bookId: maps[i]['bookId'],
  //       name: maps[i]['name'],
  //       author: maps[i]['author'],
  //       category: maps[i]['category'],
  //       price: maps[i]['price']
  //     );
  //   });
  // }
  // print(await books());



  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => MyApp(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => BookStore(),
    },
  ));
}


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void logInAuthentication() {
    var username = myController1.text;
    var password = myController2.text;
    if (username == "rochak" && password == "rochak") {
      print("success");
      Navigator.pushNamed(this.context, '/second');
      myController1.clear();
      myController2.clear();
    } else {
      print("Invalid Username or Password");

    }
  }

  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Book Store Management System"),
            ),
            body: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  children: <Widget>[
                    Form(
                        child: Column(children: <Widget>[
                      Center(
                        child: Image.asset(
                          'asset/images/codeware.png',
                          scale: 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20, left: 16, right:16, bottom: 10),
                        child: TextFormField(
                          controller: myController1,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email', hintText: 'Enter you email'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right:16, bottom: 10),
                        child: TextFormField(
                          controller: myController2,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: ElevatedButton(
                                child: Text("Log In"),
                                onPressed: logInAuthentication)),
                      ),
                    ])),
                  ],
                ))));
  }
}



