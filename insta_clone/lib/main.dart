import 'package:flutter/material.dart';
import 'package:insta_clone/src/views/home.dart';
import 'package:insta_clone/src/themes/theme.dart' as theme;
import 'package:insta_clone/src/views/shop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        "/": (context) => const Home(),
        "/shop": (context) => const Shop(),
      },
      theme: theme.appTheme,
    );
  }
}
