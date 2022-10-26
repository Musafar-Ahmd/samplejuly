import 'package:flutter/material.dart';

void main() {
  runApp(Lstcstm());
}

class Lstcstm extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return Lstcstmstate();
  }
}

class Lstcstmstate extends State<Lstcstm> {
  final item = List<String>.generate(10, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Listview Custom')),
            body: ListView.custom(
              childrenDelegate:
              SliverChildBuilderDelegate((BuildContext contex, int index) {
                return Card(
                  color: Colors.cyanAccent,
                  child: Padding(
                    child: Text(item[index]),
                    padding: EdgeInsets.all(50),
                  ),
                );
              }),
            )));
  }
}





















