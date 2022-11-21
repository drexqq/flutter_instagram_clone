import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:insta_clone/page_router.dart';
import 'package:insta_clone/src/themes/theme.dart' as theme;

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme.appTheme, home: const PageRouter());
  }
}
