import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: Center(
          child: Text(
            "welcome to Flutter",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
