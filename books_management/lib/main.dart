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
    print("Success");
    if (email == 'aaa') {
      print('ssss');
    }
  }

  final GlobalKey<FormState> _formKey = GlobalKey();
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Form(
                        key: _formKey,
                        child: Column(children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'email',
                                hintText: 'Enter you email'),
                            onFieldSubmitted: (value) {
                              setState(
                                () {
                                  email = value;
                                },
                              );
                            },
                          ),
                          TextFormField(
                              obscureText: true,
                              decoration:
                                  InputDecoration(labelText: 'Password'),
                              onFieldSubmitted: (value) {
                                setState(() {
                                  password = value;
                                });
                              }),
                          ElevatedButton(
                              child: Text("Log In"),
                              onPressed: logInAuthentication),
                        ])),
                    Column(
                      children: <Widget>[
                        Text(email),
                        Text('password')],
                    )
                  ],
                ))));
  }
}
