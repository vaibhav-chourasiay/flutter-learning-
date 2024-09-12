// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// StateFul -> jab ui ko update karna ho,
// setState -> jab widget ko REBUILD karna ho.
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // Variable
  int _counter = 0;

  //Method
  void incrementCounter() {
    // Widget ko REBUILD karna hai.
    setState(() {
      _counter += 1;
    });
  }

  void decrementCounter() {
    setState(() {
      _counter -= 1;
    });
  }

  //ui

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Push the Button this many time",
            ),
            Text(
              _counter.toString(),
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => incrementCounter(),
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () => decrementCounter(),
                  child: Icon(Icons.horizontal_rule_rounded),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
