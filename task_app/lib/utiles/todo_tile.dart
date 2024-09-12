// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String title;
  final bool value;
  Function(bool?)? onChanged;
  Function deleteTile;

  TodoTile(
      {super.key,
      required this.title,
      required this.value,
      required this.onChanged,
      required this.deleteTile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
      child: Slidable(
        endActionPane: ActionPane(motion: const ScrollMotion(), children: [
          SlidableAction(
            onPressed: (context) {
              deleteTile();
            },
            backgroundColor: const Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.archive,
            label: 'Archive',
          ),
        ]),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.yellow.shade400,
          ),
          padding: EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(value: value, onChanged: onChanged),
              Text(
                title,
                style: TextStyle(
                    decoration: (value)
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
