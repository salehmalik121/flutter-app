// ignore: unused_import
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:learning/pages/widgets/drawer.dart';

// ignore: camel_case_types
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = "Saleh";
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      body: Center(
        child: Text("1st App made by $name",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blueAccent,
            )),
      ),
      drawer: Mydrawer(),
    );
  }
}
