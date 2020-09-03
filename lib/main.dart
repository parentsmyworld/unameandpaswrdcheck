import 'package:flutter/material.dart';
import 'package:flutter_stfulunamenpaswrd/pages/Login.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xffffeeee),Color(0xffddefbb)])
            ),
          ),
          title: 
          Center(child: Text("Username and Passwrd Check",style: TextStyle(
            color: Colors.black
          ),)),
        ),
        body: Login(),
      ),
    );
  }
}
