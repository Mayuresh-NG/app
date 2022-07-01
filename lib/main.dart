import 'package:flutter/material.dart';
import 'package:untitled1/pages/loginpage.dart';
import 'pages/home.dart';

void main()
{
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => login(),
        "/home" : (context) => home(),
        "/login" : (context) => login(),
      },
    );
  }
}
