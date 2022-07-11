import 'package:flutter/material.dart';
import 'package:untitled1/pages/loginpage.dart';
import 'package:untitled1/utility/routes.dart';
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
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => login(),
        MyRoutes.homeRoute : (context) => home(),
        MyRoutes.loginRoute : (context) => login(),
      },
    );
  }
}
