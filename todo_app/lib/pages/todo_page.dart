// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// stateful -> jab ui ko change karna hai.
class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  // text editing controller to get access to what the user input.
  TextEditingController _myController = TextEditingController();

  String _greetingMessage = "";

  void greetUser() {
    setState(() {
      _greetingMessage = "Hello ${_myController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${_greetingMessage}"),

            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter your Name Here!"),
              controller: _myController,
            ),

            SizedBox(
              height: 10,
            ),

            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.redAccent,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  elevation: 5,
                ),
                onPressed: greetUser,
                child: Text(
                  "DONE",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
