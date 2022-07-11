import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  accountName: Text("Mayuresh Gorantiwar", style: TextStyle(color:Colors.deepPurple)),
                  accountEmail: Text("mayureshngorantiwar@gmail.com",style: TextStyle(color:Colors.deepPurple)),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("images/img/2.png"),
                  ),
                ),
            ),
            ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.white,),
                title: Text("HOME" ,textScaleFactor: 1.1,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
              title: Text("ABOUT" ,textScaleFactor: 1.1,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white,),
              title: Text("CONTACT" ,textScaleFactor: 1.1,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
