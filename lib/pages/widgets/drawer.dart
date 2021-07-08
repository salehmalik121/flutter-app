import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    return Drawer(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.deepPurple,
      ),
      child: Column(children: [
        BackdropFilter(
            filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0)),
        UserAccountsDrawerHeader(
          accountName: Text(
            "Saleh Muhmmad",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: Text("salehmalik121@gmail.com"),
          currentAccountPicture: CircleAvatar(
            foregroundImage: AssetImage("assets/images/nouser.jpeg"),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.home,
            color: color,
          ),
          title: Text(
            "Home",
            textScaleFactor: 1.2,
            style: TextStyle(color: color),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.white,
          ),
          title: Text(
            "Profile",
            textScaleFactor: 1.2,
            style: TextStyle(color: color),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.settings,
            color: Colors.white,
          ),
          title: Text(
            "Setting",
            textScaleFactor: 1.2,
            style: TextStyle(color: color),
          ),
        ),
      ]),
    ));
  }
}
