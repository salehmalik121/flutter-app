import 'package:flutter/material.dart';

// ignore: camel_case_types
class clonePage extends StatelessWidget {
  const clonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.fill,
            width: 400,
          )
        ],
      ),
    );
  }
}
