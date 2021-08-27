
import 'package:flutter/material.dart';

AppBar bar(context){
  return AppBar(
    title: Text(
      "Cool Blue"
    ),
    actions: [
      GestureDetector(
        child: Icon(
          Icons.shopping_cart
        ),
      ),
      RaisedButton(
        elevation: 0,
        color: Colors.blue,
        child: Text(
          "LOGOUT",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        onPressed: (){
          Navigator.pushNamedAndRemoveUntil(context, "login", (route) => false);
        },
      )
    ],
  );
}

Widget draw(context){
    return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Center(
                  child:  CircleAvatar(
                    backgroundImage: AssetImage("picha/coldblue.png"),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}