import 'package:flutter/material.dart';
import 'package:books_management/BookStore.dart';

void main() {
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
      Navigator.pushNamed(context, '/second');

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



