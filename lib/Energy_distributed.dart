import 'package:flutter/material.dart';

void main() {
  runApp(Energy_distributed());
}

// ignore: camel_case_types
class Energy_distributed extends StatefulWidget {
  @override
  _Energy_distributedState createState() => _Energy_distributedState();
}

// ignore: camel_case_types
class _Energy_distributedState extends State<Energy_distributed> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(children: <Widget>[
        Center(
            child: Text(
          'ENERGY DISTRIBUTED',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        DataTable(
          columns: [
            DataColumn(
                label: Text('DATE',
                    style: TextStyle(fontSize: 25, color: Colors.deepOrange))),
            DataColumn(
                label: Text('AMOUNT',
                    style: TextStyle(fontSize: 25, color: Colors.deepOrange))),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text(
                '10/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '500 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '09/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '510 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '08/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '505 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '07/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '500 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '06/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '520 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
          ],
        ),
      ])),
    );
  }
}
