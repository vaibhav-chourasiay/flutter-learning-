import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.btnText, required this.btnFunc});

  final String btnText;
  final Function btnFunc;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        btnFunc();
      },
      child: Text(btnText),
    );
  }
}
