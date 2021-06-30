import 'package:flutter/material.dart';
import 'package:learning/pages/home_page.dart';
import 'package:learning/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      initialRoute: "/loginpage",
      routes: {
        "/homepage": (context) => homePage(),
        "/loginpage": (context) => loginPage(),
      },
    );
  }
}
