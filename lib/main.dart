import "package:flutter/material.dart";
import 'package:hell/pages/home_page.dart';
import "package:hell/pages/login_page.dart";
import "package:google_fonts/google_fonts.dart";
import "package:hell/utils/routes.dart";

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
    themeMode: ThemeMode.light,
    theme: ThemeData( primarySwatch: Colors.blueGrey, 
    fontFamily: GoogleFonts.lato().fontFamily,
    // primaryTextTheme: GoogleFonts.latoTextTheme()
    ),
    darkTheme: ThemeData( brightness: Brightness.dark),
     initialRoute: "/",
    routes: {
      "/": (context) => LoginPage(),
      MyRoutes.homeRoute: (context)=> HomePage(),
      MyRoutes.loginRoute:(context) => LoginPage(),
    },
    );
  }
}
