import 'package:flutter/material.dart';
import 'package:untitled1/pages/loginpage.dart';
import 'pages/home.dart';
import 'package:google_fonts/google_fonts.dart';
void main()
{
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => login(),
        "/home" : (context) => home(),
        "/login" : (context) => login(),
      },
    );
  }
}
