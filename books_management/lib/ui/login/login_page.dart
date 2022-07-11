import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const route = "/login";

  static void presentPage(BuildContext context) {
    Navigator.pushNamed(context, route);
  }

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Book Store Management System"),
            ),
            body: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 60.0),
                child: Column(
                  children: <Widget>[
                    _buildLoginForm(),
                  ],
                ))));
  }

  _buildLoginForm() {
    return Form(
        child: Column(children: <Widget>[
      Center(
        child: Image.asset(
          'asset/images/codeware.png',
          scale: 1.5,
        ),
      ),
      Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 10),
        child: TextFormField(
          controller: myController1,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              hintText: 'Enter you email'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
        child: TextFormField(
          controller: myController2,
          obscureText: true,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'Password'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
                onPressed: logInAuthentication, child: const Text("Log In"))),
      ),
    ]));
  }

  void logInAuthentication() {
    var username = myController1.text;
    var password = myController2.text;
    if (username == "rochak" && password == "rochak") {
      print("Login Succesful");
      Navigator.pushNamed(context, '/home');
      myController1.clear();
      myController2.clear();
    } else {
      print("Invalid Username or Password");
    }
  }
}
