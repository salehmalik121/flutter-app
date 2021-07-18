import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme),
      );
  static ThemeData darktheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  static Color cream = Color(0xfff5f5f5);
  static Color bluish = Color(0xaa403aa2);
}
