import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splash2(),
  ));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
        title: const Text(
          "home",
          style: TextStyle(fontSize: 50.0, color: Colors.lightGreen),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
