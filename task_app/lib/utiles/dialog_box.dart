// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_app/utiles/my_button.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({
    super.key,
    required this.clearBtnFunc,
    required this.saveBtnFunc,
    required this.controller,
    required this.removeScreen,
  });

  final Function clearBtnFunc;
  final Function saveBtnFunc;
  final Function removeScreen;
  final TextEditingController controller;

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellowAccent.shade200,
      content: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyButton(btnText: "X", btnFunc: widget.removeScreen),
            TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                hintText: "Enter Task",
                prefixIcon: Icon(Icons.task),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),

            //NOTE: BUTON ROW
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              MyButton(btnText: "Clear", btnFunc: widget.clearBtnFunc),
              SizedBox(width: 10),
              MyButton(btnText: "Save", btnFunc: widget.saveBtnFunc),
            ]),
          ],
        ),
      ),
    );
  }
}
