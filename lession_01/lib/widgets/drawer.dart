// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void goToSetting(BuildContext context) {
    // it will remove top most screen. NOTE:in flutter every screen IS STACKED.
    Navigator.pop(context);
    Navigator.pushNamed(context, "/settingspage");
  }

  void goToHome(BuildContext context) {
    Navigator.pop(context);
    Navigator.pushNamed(context, "/homepage");
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      // Column apna children ko 100% width provide kar ta hai
      children: [
        DrawerHeader(
          child: Icon(
            Icons.favorite,
            size: 48,
          ),
        ),
        ListTile(
          onTap: () => goToHome(context),
          leading: Icon(Icons.home),
          title: Text("H O M E"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("S E T T I N G"),
          onTap: () => goToSetting(context),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("H O M E"),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("H O M E"),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("H O M E"),
        ),
      ],
    ));
  }
}
