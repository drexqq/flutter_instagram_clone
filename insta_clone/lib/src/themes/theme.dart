import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 1,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 25,
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        )),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
    ));
