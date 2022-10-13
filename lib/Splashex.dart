import 'dart:async';
import 'package:flutter/material.dart';
import 'LoginForm.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      debugShowCheckedModeBanner: false,
      home: MySplash()));
}

class MySplash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MySplashState();
}

class MySplashState extends State<MySplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Image(
                image: AssetImage("assets/images/apple.png"),
                width: 200,
                height: 200,
              ),
              Text(
                "welcome to flutter",
              style: TextStyle(fontFamily: " Alkalami-Regular.ttf "    ) ,
              //   style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold
              //       , color: Colors.white),
              // )
              )        ],

          ),
        ),
      ),
    );
  }
}
