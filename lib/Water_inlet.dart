import 'package:flutter/material.dart';

void main() {
  runApp(Water_inlet());
}

// ignore: camel_case_types
class Water_inlet extends StatefulWidget {
  @override
  _Water_inletState createState() => _Water_inletState();
}

// ignore: camel_case_types
class _Water_inletState extends State<Water_inlet> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: ListView(children: <Widget>[
        Center(
            child: Text(
          'WATER INLET',
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
                '1460*10^6 m^3',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '09/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '1460*10^6 m^3',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '08/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '1460*10^6 m^3',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '07/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '1460*10^6 m^3',
                style: TextStyle(fontSize: 18),
              )),
            ]),
            DataRow(cells: [
              DataCell(Text(
                '06/04/2020',
                style: TextStyle(fontSize: 18),
              )),
              DataCell(Text(
                '1460*10^6 m^3',
                style: TextStyle(fontSize: 18),
              )),
            ]),
          ],
        ),
      ])),
    );
  }
}
