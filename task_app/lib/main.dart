// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Color(0xFF101820),
        appBarTheme: AppBarTheme(
            backgroundColor: const Color.fromARGB(200, 255, 242, 59),
            foregroundColor: Colors.white),
      ),
      routes: {},
    );
  }
}
