import 'package:flutter/material.dart';

ThemeData english = ThemeData(
    textTheme: const TextTheme(
  bodyLarge: TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: 25),
  bodyMedium: TextStyle(
      fontFamily: 'Lato',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xffa4a3a4)),
  bodySmall: TextStyle(
      fontFamily: 'Lato',
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: Colors.black),
  labelLarge: TextStyle(
      fontFamily: 'Lato', fontWeight: FontWeight.bold, fontSize: 30),
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
