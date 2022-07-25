import 'package:flutter/material.dart';

const kColorPrimary = Color(0xffea952d);
const kColorAccent = Color(0xfff9f2df);

final themedata = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        onPrimary: kColorPrimary,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kColorAccent, selectedItemColor: kColorPrimary));
