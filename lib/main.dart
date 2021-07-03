import 'package:flutter/material.dart';
import 'package:learning/pages/home_page.dart';
import 'package:learning/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learning/pages/utis/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.homeRoute: (context) => HomePage(),
        Myroutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
