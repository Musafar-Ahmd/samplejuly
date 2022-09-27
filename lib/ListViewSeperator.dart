import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samplejuly/List_with_builder.dart';

void main() {
  runApp(MaterialApp(
    home: List2(),
  ));
}

class List2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => List2State();
}

class List2State extends State {


  List<String> fruits = ["apple", "orange", " grape", "lemon"];
  List<String> images = [
    "assets/images/apple.png",
    "assets/images/orange.png",
    "assets/images/grape.png",
    "assets/images/lemon.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewSeperated"),
      ),
      body: ListView.separated(
          itemBuilder:(BuildContext,index) {
            return Card(
              child: ListTile(
                leading: Image.asset(images[index]),
                title: Text(fruits[index]),
              ),
            );
          },
          separatorBuilder: (BuildContext,index) {
return Divider(thickness: 3,color: Colors.indigoAccent);
          },
          itemCount:images.length )
    );
  }
}
