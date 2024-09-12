// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_app/utiles/dialog_box.dart';
import 'package:task_app/utiles/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var prefs;

  List taskList = [];

  @override
  void initState() {
    super.initState();
    initDB();
  }

  TextEditingController controller = TextEditingController();

  Future<void> initDB() async {
    prefs = await SharedPreferences.getInstance();
    taskList = await prefs.getString("taskList") ?? [];
    setState(() {});
  }

  Future<void> saveBtnFunc() async {
    Map dict = {
      "task": controller.text,
      "isCompleted": false,
    };
    taskList.add(dict);
    // await prefs.setString("taskList", taskList.toString()

    controller.clear();
    setState(() {});
  }

  void clearBtnFunc() {
    controller.clear();
    setState(() {});
  }

  void removeScreen() {
    Navigator.pop(context);
  }

  void onChanged(bool value, int index) {
    setState(() {
      taskList[index]["isCompleted"] = value;
    });
  }

  void deleteTile(index) {
    taskList.removeAt(index);
    setState(() {});
  }

  void addTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: controller,
            saveBtnFunc: saveBtnFunc,
            clearBtnFunc: clearBtnFunc,
            removeScreen: removeScreen,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Task App',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              title: taskList[index]["task"],
              value: taskList[index]["isCompleted"],
              onChanged: (value) {
                onChanged(value!, index);
              },
              deleteTile: () => deleteTile(index),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addTask,
          child: Icon(Icons.add),
        ));
  }
}
