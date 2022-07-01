import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void logInAuthentication() {
    var username = myController1.text;
    var password= myController2.text;
    if (username == "rochak" && password == "rochak") {
      print("Success");
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
            body: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Form(
                        child: Column(children: <Widget>[
                      TextFormField(
                        controller: myController1,
                        decoration: InputDecoration(
                            labelText: 'Email', hintText: 'Enter you email'),
                      ),
                      TextFormField(
                        controller: myController2,
                        obscureText: true,
                        decoration: InputDecoration(labelText: 'Password'),
                      ),
                      ElevatedButton(
                          child: Text("Log In"),
                          onPressed: logInAuthentication),
                    ])),
                    Column(
                      children: [
                          Text('Welcoee ' + myController1.text)
                          ,
                      ],
                    )
                  ],
                ))));
  }
}
