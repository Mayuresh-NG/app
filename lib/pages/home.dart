import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Center(
          child: Container(
            child: Text(""),
          ),
        ),
        drawer: MyDrawer(),
    );
  }
}
