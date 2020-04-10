import 'package:flutter/material.dart';

void main() {
  runApp(Energy_forecast());
}

// ignore: camel_case_types
class Energy_forecast extends StatefulWidget {
  @override
  _Energy_forecastState createState() => _Energy_forecastState();
}

// ignore: camel_case_types
class _Energy_forecastState extends State<Energy_forecast> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(48),
          child: AppBar(backgroundColor: Colors.black,
            bottom: TabBar(labelColor: Colors.deepOrange,isScrollable: true,
              tabs: [
                Tab(text: 'IDUKKI',),
                Tab(text: 'SABARIGIRI',),
                Tab(text: 'IDAMALAYAR',),
                Tab(text: 'SHOLAYAR',),
                Tab(text: 'PALLIVASAL',),
              ],
            ),

          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: SingleChildScrollView(scrollDirection: Axis.vertical,
                child: Table(

                  border: TableBorder.all(),
                  children: [
                    TableRow( children: [
                      Column(children:[
                        Icon(Icons.date_range, size: 30,color: Colors.deepOrange,),
                        Text('DATE',)
                      ]),
                      Column(children:[
                        Icon(Icons.show_chart, size: 30,color: Colors.deepOrange,),
                        Text('ENERGY CONSUMPTION')
                      ]),


                    ]),
                    TableRow( children: [
                      Text('11/04/2020',style: TextStyle(fontSize: 18),),
                      Text('445 MW',style: TextStyle(fontSize: 18),),


                    ]),
                    TableRow( children: [
                      Text('12/04/2020',style: TextStyle(fontSize: 18),),
                      Text('450 MW',style: TextStyle(fontSize: 18),),

                    ]),
                    TableRow( children: [
                      Text('13/04/2020',style: TextStyle(fontSize: 18),),
                      Text('425 MW',style: TextStyle(fontSize: 18),),

                    ]),
                    TableRow( children: [
                      Text('14/04/2020',style: TextStyle(fontSize: 18),),
                      Text('435 MW',style: TextStyle(fontSize: 18),),

                    ]),
                    TableRow( children: [
                      Text('15/04/2020',style: TextStyle(fontSize: 18),),
                      Text('455 MW',style: TextStyle(fontSize: 18),),

                    ]),
                  ],
                ),
              ),
            ),
            (Container(
              child: Center(
                child: Image(
                  image: AssetImage('images/GRAPH.png'),
                ),
              ),
            )),
            (Container(
              child: Center(
                child: Image(
                  image: AssetImage('images/GRAPH2.png'),
                ),
              ),
            )),
            (Container(
              child: Center(
                child: Image(
                  image: AssetImage('images/graph3.png'),
                ),
              ),
            )),

          ],
        ),),
      ),
    ),);
  }
}

/*
//SafeArea(child: Center(
//child: Image(image: AssetImage('images/GRAPH.png'),height: 1000,width: 1000,),
),

),
),
/*GestureDetector(
              onTap: () {print('hello');},
              child: Card(
                elevation: 10,
                color: Colors.white10,
                child: FlutterLogo(size: 150,),
              ),
            )*/

);
*/
