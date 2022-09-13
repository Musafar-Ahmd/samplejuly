
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List2(),));
}

class List2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => List2State();

  }

  class List2State extends State {

    List<String> fruits = ["apple", "banana", "orange"];
    List<String> images = [
      "assets/images/apple.png",
      "assets/image/banana,png",
      "assets/images/orange.png"
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("ListView.Builder"),
        ),
          body: ListView.builder(
              itemBuilder:(BuildContext , index) {
                return Card(
                  child: ListTile(
                    leading: Image.asset(images[index]),
                  ),
                );
              },
            itemCount: images.length,
        )
      );

    }
  }