import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        accentColor: Colors.black,
        primarySwatch: Colors.deepPurple,
        cardColor: cream,
        canvasColor: Colors.white,
        buttonColor: bluish,
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme),
      );
  static ThemeData darktheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.white,
        cardColor: Colors.black,
        canvasColor: Colors.grey[900],
        primarySwatch: Colors.indigo,
        buttonColor: Colors.indigoAccent,
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(),
            backgroundColor: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(headline6: TextStyle(color: Colors.white))),
      );

  static Color cream = Color(0xfff5f5f5);
  static Color drakcream = Colors.black87;
  static Color bluish = Color(0xaa403aa2);
  static Color lightbluish = Colors.indigoAccent;
}
