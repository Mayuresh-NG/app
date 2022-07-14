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
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  accountName: Text("Mayuresh Gorantiwar", style: TextStyle(color:Colors.white,fontSize:16)),
                  accountEmail: Text("mayureshngorantiwar@gmail.com",style: TextStyle(color:Colors.white)),
                  currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("images/img/2.png"),
                  ),
                ),
            ),
            ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.black,),
                title: Text("HOME" ,textScaleFactor: 1.2,style: TextStyle(color: Colors.black),),
              ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled, color: Colors.black,),
              title: Text("ABOUT" ,textScaleFactor: 1.2,style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.black,),
              title: Text("CONTACT" ,textScaleFactor: 1.2,style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
