

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white38,
              Colors.blueGrey
            ]
          ),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(flex: 4, child: Container(),),
                  Expanded(flex: 5, child: Center(
                      child: Image.asset(
                        "picha/coldblue.png",
                        fit: BoxFit.scaleDown,
                      )
                  ),),
                  Expanded(flex: 1, child: Container(),),
                ],
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Enter your mobile number to get started!",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                    ),
                    Divider(color: Colors.white38,),
                    Form(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.phone_android_outlined),
                                  prefix: Text("255 "),
                                  hintText: "Mobile No."
                                ),
                              ),
                            ),
                          ),

                          Divider(color: Colors.white54,),

                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Center(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.lock),
                                    hintText: "Enter Pin"
                                ),
                              ),
                            ),
                          ),

                          Divider(color: Colors.blueGrey[200],),

                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password ?",
                              style: TextStyle(
                                  color: Colors.deepOrangeAccent,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                          ),

                          Divider(color: Colors.blueGrey[200],),

                          GestureDetector(
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Center(
                                child: Text(
                                  "SUBMIT",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15
                                  ),
                                ),
                              ),
                            ),
                            onTap: (){
                              Navigator.pushNamedAndRemoveUntil(context, "home", (route) => false);
                            },
                          ),

                          Divider(color: Colors.blueGrey[200],),

                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.blue[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
