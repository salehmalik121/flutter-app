// ignore: unused_import
import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = " saleh ";
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("1st App made by $name",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
            )),
      ),
      drawer: Drawer(),
    );
  }
}
