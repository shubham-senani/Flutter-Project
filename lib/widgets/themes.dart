import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class MyTheme {
  static ThemeData ligtTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blueGrey,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        centerTitle: true,
        toolbarHeight: 65,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark
  );
}
