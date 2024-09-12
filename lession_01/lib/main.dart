// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lession_01/pages/first_page.dart';
import 'package:lession_01/pages/home_page.dart';
import 'package:lession_01/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

// ABSTRUCT -> ABSTRUCT FUNCTION -> OVERRIDE
class MyApp extends StatelessWidget {
  // This Object proties are become constant.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold is like a scalletor of app or structure for screen
      title: "MyFirstApp",
      home: FirstPage(),
      routes: {
        "/homepage": (context) => HomePage(),
        "/firstpage": (context) => FirstPage(),
        "/settingspage": (context) => SettingsPage(),
        // '/secondpage': (context) => SecondPage(),
      },
    );
  }
}
