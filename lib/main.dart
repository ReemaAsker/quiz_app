import 'package:flutter/material.dart';
import 'package:quiz_app_final/pages/intro_page.dart';
import 'package:quiz_app_final/pages/level_page.dart';
import 'package:quiz_app_final/pages/quiz_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const levelPage(),
        '/intro': (context) => const intro_page(),
        '/quiz': (context) => const Quiz_page(),
      },
      // home: levelPage(),
    );
  }
}
