import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/utility/routes.dart';


class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
                "Welcome $name" , style: TextStyle(
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value){
                        name = value;
                        setState(() {
                        });
                      }
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "password",
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Please enter Password";
                        }
                        else if(value.length < 6){
                          return "invalid length";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(changeButton ? 40 : 5),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 40 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: changeButton?Icon(
                              Icons.home,
                              color: Colors.white,
                          )
                          : Text("LOGIN",
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold
                              )
                          ),
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     child: Text("LOGIN"),
                    //     style: TextButton.styleFrom(
                    //       minimumSize: Size(80,30)),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
