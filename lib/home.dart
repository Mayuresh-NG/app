import 'package:flutter/material.dart';

class home extends StatelessWidget {
num temp = 15.36;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mayuresh app"),
      ),
        body: Center(
          child: Container(
            child: Text("This is $temp Mayuresh Gorantiwar"),
          ),
        ),
        drawer: Drawer(),
    );
  }
}
