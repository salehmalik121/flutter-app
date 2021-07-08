import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:learning/pages/clone_page.dart';
// ignore: unused_import
import 'package:learning/pages/home_page.dart';
// ignore: unused_import
import 'package:learning/pages/login_page.dart';
// ignore: unused_import
import 'package:learning/pages/utis/routes.dart';
import 'package:learning/pages/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Mytheme.lighttheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.loginRoute: (context) => LoginPage(),
        "clonePage": (context) => clonePage()
      },
    );
  }
}
