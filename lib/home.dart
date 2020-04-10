import 'package:energyforecast/Energy_consumed.dart';
import 'package:flutter/material.dart';
import 'package:energyforecast/main.dart';
import 'package:energyforecast/Energy_forecast.dart';
import 'package:energyforecast/Energy_generated.dart';
import 'package:energyforecast/Water_inlet.dart';
import 'package:energyforecast/Energy_distributed.dart';
import 'package:energyforecast/Energy_remaining.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 0;
  final tabs = [
    Center(
      child: Energy_forecast(),
    ),
    Center(
      child: Water_inlet(),
    ),
    Center(
      child: Energy_generated(),
    ),
    Center(
      child: Energy_distributed(),
    ),
    Center(
      child: Energy_remaining(),
    ),
    Center(
      child: Energy_consumed(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ENERGY FORECAST',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,

            children: <Widget>[
              Container(
                height: 80,
                child: DrawerHeader(
                  child: Text(
                    'POWER STATIONS',
                    style: TextStyle(fontSize: 30, color: Colors.deepOrange),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(7),
                    child: ListTile(
                      title: Text(
                        'Idukki',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      onTap: () {
                        // Update the state of the app.
                        //...
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(7),
                    child: ListTile(
                      title: Text(
                        'Sabarigiri',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(7),
                    child: ListTile(
                      title: Text(
                        'Idamalayar',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(7),
                    child: ListTile(
                      title: Text(
                        'Sholayar',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.deepOrange,
                    margin: EdgeInsets.all(7),
                    child: ListTile(
                      title: Text(
                        'Pallivasal',
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    margin: EdgeInsets.all(2),
                    child: ListTile(
                      title: Text(
                        'Total',
                        style:
                            TextStyle(fontSize: 30, color: Colors.deepOrange),
                      ),
                      onTap: () {
                        // Update the state of the app.
                        // ...
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: tabs[_currentindex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.show_chart,
                color: Colors.deepOrange,
                size: 40,
              ),
              title: Text(
                'Forecast',
                style: TextStyle(color: Colors.deepPurple),
              ),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info_outline,
                color: Colors.deepOrange,
                size: 40,
              ),
              title: Text(
                'Inlet',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_chart,
                color: Colors.deepOrange,
                size: 40,
              ),
              title: Text(
                'Generated',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.sync,
                color: Colors.deepOrange,
                size: 40,
              ),
              title: Text(
                'Distributed',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.battery_unknown,
                color: Colors.deepOrange,
                size: 40,
              ),
              title: Text(
                'Remaining',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bubble_chart,
                color: Colors.deepOrange,
                size: 40,
              ),
              title: Text(
                'Consumed',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
