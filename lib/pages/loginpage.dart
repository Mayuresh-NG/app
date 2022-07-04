import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utility/routes.dart';


class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.asset("images/img/new.png", fit: BoxFit.cover,),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome" , style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepPurpleAccent,
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "password",
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text("LOGIN"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(80,30)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
