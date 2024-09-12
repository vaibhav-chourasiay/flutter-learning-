// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lession_01/pages/home_page.dart';
import 'package:lession_01/pages/profile_page.dart';
import 'package:lession_01/pages/settings_page.dart';

// State not change any this in ui
// StateFul -> jab ui update karna ho.
// SetState -> dubara sa rebuild kar ta hai widget.
class FirstPage extends StatefulWidget {
  // This object is constant and its properties are also compiler time constant means we can not modify its properties or objects.
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];

  int _selectedIndex = 0;

  void _navigateBottomBar(int selectedIndex, String name) {
    setState(() {
      _selectedIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "NavBar",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      // drawer: MyDrawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int selectedIndex) =>
            _navigateBottomBar(selectedIndex, "vaibhav"),
        items: [
          //Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          //Person
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

          //Settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
