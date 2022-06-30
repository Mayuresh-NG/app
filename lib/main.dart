import 'package:flutter/material.dart';

void main()
{
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("This is Mayuresh Gorantiwar"),
          ),
        )
      )
    );
  }
}
