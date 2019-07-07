import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        _backApp(),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _title(),
              _botonActions(context)
            ],
          ),
        )
      ],
    )
  );

  Widget _backApp() {
    final baseColor = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );
    final boxD1 = Transform.rotate(
      angle: -pi/5.0,
      child: Container(
      height: 320.0,
      width: 320.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90.0),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(214,99,255,1),
            Color.fromRGBO(214,99,255,1)
          ]
        )
      ),
      )
    );

    final boxD2 = Transform.rotate(
      angle: -pi/9.0,
      child: Container(
      height: 320.0,
      width: 320.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90.0),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(214,99,255,1),
            Color.fromRGBO(214,99,255,1)
          ]
        )
      ),
      )
    );


    return Stack(
      children: <Widget>[
        baseColor,
        Positioned(
          top: -100,
          left: -50,
          child: boxD1
        ),
        Positioned(
          top: 480,
          left: 200,
          child: boxD2,
        )
      ],
    );
  }

  Widget _title() => SafeArea(
    child: Container (
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Menú principal', style:TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.0),
          Text('Banco bienes', style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ],
      ),
    )
  );

  Widget _botonActions(BuildContext context) => Table (
    children: [
      TableRow(
        children: [
          _makeBottom(Icons.directions_car, Colors.blue, 'Vehículos', context, "/car"),
          _makeBottom(Icons.home, Colors.green, 'Casas', context, "/house"),
        ],
      ),
      TableRow(
        children: [
          _makeBottom(Icons.location_on, Colors.purple, 'Terrenos',context, "/terrain"),
          _makeBottom(Icons.euro_symbol, Colors.orange, 'Calculadora',context, "/car"),
        ],
      ),
    ],
  );

  Widget _makeBottom(IconData icon, Color color, String nombre, BuildContext context, String direction ) => Container (
    height: 140.0,
    margin: EdgeInsets.all(20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(),
        CircleAvatar(
          backgroundColor: color,
          radius: 25.0,
          child: Icon(icon, color: Colors.white, size: 30.0),
          
        ),
        RaisedButton(
          shape: StadiumBorder(),
          color: Color.fromRGBO(52, 54, 101, 0.2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0), 
              child: Text(nombre, style: TextStyle(fontSize: 18.0, color: Colors.white)),
            ),
              onPressed: () {
                Navigator.pushNamed(context, direction);
              }
          ),
        //Text(nombre, style: TextStyle(color: Colors.pinkAccent)),
        SizedBox()
      ],
    ),
  );

}