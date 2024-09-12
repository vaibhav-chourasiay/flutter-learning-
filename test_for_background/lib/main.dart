// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "AppBar",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: Image(
                image: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
            ),
            Container(
              child: ListView(
                children: [
                  Container(
                    width: double.infinity,
                    height: 500,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    color: Colors.green,
                    width: double.infinity,
                    height: 600,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
