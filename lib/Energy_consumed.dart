import 'package:flutter/material.dart';

void main() {
  runApp(Energy_consumed());
}

// ignore: camel_case_types
class Energy_consumed extends StatefulWidget {
  @override
  _Energy_consumedState createState() => _Energy_consumedState();
}

// ignore: camel_case_types
class _Energy_consumedState extends State<Energy_consumed> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(children: <Widget>[
        Center(
            child: Text(
          'ENERGY CONSUMED',
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
                '450 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '09/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '430 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '08/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '420 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '07/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '480 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '06/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '460 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
          ],
        ),
      ])),
    );
  }
}
