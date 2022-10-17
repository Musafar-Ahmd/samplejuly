import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyTable());
}

class MyTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(children: <Widget>[
            const Center(
                child: Text(
                  'Table',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
            DataTable(
              columns: const [
                DataColumn(label: Text(
                    'Course',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Collage',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
                DataColumn(label: Text(
                    'Branch',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                )),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('B-TECH')),
                  DataCell(Text('MMUT')),
                  DataCell(Text('CSE')),
                ]),
                DataRow(cells: [
                  DataCell(Text('B-TECH')),
                  DataCell(Text('KTU')),
                  DataCell(Text('IT')),
                ]),
                DataRow(cells: [
                  DataCell(Text('B-TECH')),
                  DataCell(Text('IET')),
                  DataCell(Text('ME')),
                ]),
              ],
            ),
          ])
      ),
    );
  }
}