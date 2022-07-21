import 'package:books_management/ui/home/display_books_in_db.dart';
import 'package:books_management/ui/home/home_page.dart';
import 'package:books_management/ui/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:books_management/insert_books_ui.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    // initialRoute: isLogin ? HomePage.route : LoginPage.route,
    initialRoute: DisplayBooksFromDB.route,
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      LoginPage.route: (context) => const LoginPage(),
      HomePage.route: (context) => HomePage(),
      DisplayBooksFromDB.route: (context) => DisplayBooksFromDB(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => BookStore(),
      '/home': (context) => HomePage(),
      '/library': (context) => DisplayBooksFromDB(),
    },
  ));
}
