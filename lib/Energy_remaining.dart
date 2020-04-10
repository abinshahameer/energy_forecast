import 'package:flutter/material.dart';

void main() {
  runApp(Energy_remaining());
}

// ignore: camel_case_types
class Energy_remaining extends StatefulWidget {
  @override
  _Energy_remainingState createState() => _Energy_remainingState();
}

// ignore: camel_case_types
class _Energy_remainingState extends State<Energy_remaining> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(children: <Widget>[
        Center(
            child: Text(
          'ENERGY REMAINING',
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
                '280 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '09/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '250MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '08/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '240 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '07/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '265 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '06/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '250 MW',
                style: TextStyle(fontSize: 18),
              )),
            ]),
          ],
        ),
      ])),
    );
  }
}
