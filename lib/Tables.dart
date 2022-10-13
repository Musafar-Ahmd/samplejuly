import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyTable());
}

class MyTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Course',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Collage',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Branch',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows:  <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('B.TECH')),
                DataCell(Text('MMMUT')),
                DataCell(Text('CSE')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('B.TECH')),
                DataCell(Text('HBTU')),
                DataCell(Text('IT')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('B.TECH')),
                DataCell(Text('IET')),
                DataCell(Text('ME')),
              ],
            ),
          ],
        ));
  }
}