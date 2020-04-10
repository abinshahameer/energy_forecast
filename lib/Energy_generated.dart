import 'package:flutter/material.dart';

void main()
{
  runApp(Energy_generated());
}
// ignore: camel_case_types
class Energy_generated extends StatefulWidget {
  @override
  _Energy_generatedState createState() => _Energy_generatedState();
}

// ignore: camel_case_types
class _Energy_generatedState extends State<Energy_generated> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body:ListView(children: <Widget>[
            Center(
                child: Text(
                  'ENERGY GENERATED',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            DataTable(
              columns: [
                DataColumn(label: Text('DATE',style: TextStyle(fontSize: 25,color: Colors.deepOrange))),
                DataColumn(label: Text('AMOUNT',style: TextStyle(fontSize: 25,color: Colors.deepOrange))),

              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('10/04/2020',style: TextStyle(fontSize: 18),)),
                  DataCell(Text('780 MW',style: TextStyle(fontSize: 18),)),

                ]),
                DataRow(cells: [
                  DataCell(Text('09/04/2020',style: TextStyle(fontSize: 18),)),
                  DataCell(Text('760 MW',style: TextStyle(fontSize: 18),)),

                ]),
                DataRow(cells: [
                  DataCell(Text('08/04/2020',style: TextStyle(fontSize: 18),)),
                  DataCell(Text('745 MW',style: TextStyle(fontSize: 18),)),

                ]),
                DataRow(cells: [
                  DataCell(Text('07/04/2020',style: TextStyle(fontSize: 18),)),
                  DataCell(Text('765 MW',style: TextStyle(fontSize: 18),)),

                ]),
                DataRow(cells: [
                  DataCell(Text('06/04/2020',style: TextStyle(fontSize: 18),)),
                  DataCell(Text('770 MW',style: TextStyle(fontSize: 18),)),

                ]),
              ],
            ),
          ])),
        );
  }
}
