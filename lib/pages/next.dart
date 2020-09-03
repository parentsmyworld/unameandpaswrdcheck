import 'package:flutter/material.dart';
import 'package:flutter_stfulunamenpaswrd/main.dart';

class Next extends StatelessWidget {
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
          Center(child: Text("Logged In",style: TextStyle(
              color: Colors.black
          ),)),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffffeeee),Color(0xffddefbb)])
            ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text("Welcome...",style: TextStyle(
                   fontSize: 20.0
                 ),),
                 SizedBox(height: 100.0,),
                 IconButton(
                   onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
                   },
                   iconSize: 20.0,
                   icon: Icon(Icons.arrow_back),
                 )
    ],

        ),
          ),
      ),)
    );
  }
}
