import 'package:flutter/material.dart';

const _primarySwatch = Colors.pink;
const _appBarIconColor = Colors.pink;
const _inputBorderColor = Colors.black;

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: _primarySwatch,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.white38,
      onPrimary: Colors.blue,
    ),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.blue,
      fontSize: 25,
    ),
    backgroundColor: Colors.white38,
    iconTheme: IconThemeData(
      color: _appBarIconColor,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _inputBorderColor),
    ),
  ),
);
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: _primarySwatch,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.black,
      onPrimary: Colors.pink,
    ),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.pink,
      fontSize: 25,
    ),
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(
      color: _appBarIconColor,
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _inputBorderColor),
    ),
  ),
);
