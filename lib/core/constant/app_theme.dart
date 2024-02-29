import 'package:flutter/material.dart';

ThemeData english = ThemeData(
    textTheme: const TextTheme(
  bodyLarge: TextStyle(
      fontFamily: 'PlayfairDisplay', fontWeight: FontWeight.bold, fontSize: 25),
  bodyMedium: TextStyle(
      fontFamily: 'PlayfairDisplay',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xffa4a3a4)),
  labelLarge: TextStyle(
      fontFamily: 'PlayfairDisplay', fontWeight: FontWeight.bold, fontSize: 30),
));

ThemeData arabic = ThemeData(
    textTheme: const TextTheme(
  bodyLarge:
      TextStyle(fontFamily: 'Cairo', fontWeight: FontWeight.bold, fontSize: 25),
  bodyMedium: TextStyle(
      fontFamily: 'Cairo',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xffa4a3a4)),
  labelLarge:
      TextStyle(fontFamily: 'Cairo', fontWeight: FontWeight.bold, fontSize: 30),
));
