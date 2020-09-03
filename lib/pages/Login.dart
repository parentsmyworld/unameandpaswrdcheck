import 'package:flutter/material.dart';
import 'package:flutter_stfulunamenpaswrd/pages/next.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController a=TextEditingController();
  TextEditingController b=TextEditingController();
  String result="";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xffffeeee),Color(0xffddefbb)])
      ),
      child: Column(
        children: [
          SizedBox(height: 50.0,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: TextField(
              controller: a,
              decoration: InputDecoration(
                  hintText: "Enter Username",
                  prefixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            ),
          ),
          SizedBox(height: 30.0,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: TextField(
              controller: b,
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  )
              ),
            ),
          ),
          SizedBox(height: 30.0,),
          GestureDetector(
            onTap: (){
              setState(() {
                var x=a.text;
                var y=b.text;
                if(x=="admin" && y=="1234")
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Next()));
                else
                  result="Invalid Credentials";
              });
            },
            child: Container(
              child: Center(child: Text("Login")),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                //color: Color(0xffddefbb)
                color: Colors.lightGreen
              ),
              height: 60.0,
              width: 150.0,

            ),
          ),
          SizedBox(height: 30.0,),
          Text(result,style: TextStyle(
            color: Colors.red
          ),)

        ],
      ),
    );
  }
}
