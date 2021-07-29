import 'package:flutter/material.dart';
import 'package:learning/pages/cart.dart';
// ignore: unused_import

// ignore: unused_import
import 'package:learning/pages/home_page.dart';
// ignore: unused_import
import 'package:learning/pages/login_page.dart';
// ignore: unused_import
import 'package:learning/pages/utis/routes.dart';
import 'package:learning/pages/widgets/theme.dart';
import 'package:learning/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Mytheme.lighttheme(context),
      darkTheme: Mytheme.darktheme(context),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.loginRoute: (context) => LoginPage(),
        "test": (context) => test(),
        Myroutes.cartRoute: (context) => Cart(),
      },
    );
  }
}
