import 'dart:async';

import 'package:coolblue/signup.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: one(),
  routes: {
    "login" : (context) => login(),
    "signup" : (context) => signup(),
    "home" : (context) => home(),
  },
));

class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);
  @override
  _oneState createState() => _oneState();
}

class _oneState extends State<one> {

  void opener() async{
    Timer(Duration.zero, (){
      Navigator.pushNamedAndRemoveUntil(context, "login", (route) => false);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    opener();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Container(
        child: Center(
          child: Image(
            image: AssetImage(
            "picha/coldblue.png",
          ),
          )
        ),
      ),
    );
  }
}

