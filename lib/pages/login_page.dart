import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Text(
              "Login",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: ('Username'), hintText: ("Enter User Name")),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: ("Password"),
                      hintText: ('Enter Password'),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              child: Text("Log in"),
              onPressed: () {
                print("login requsted");
              },
            )
          ],
        ));
  }
}
