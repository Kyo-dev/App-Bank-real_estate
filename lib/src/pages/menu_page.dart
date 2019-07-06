import 'dart:math';

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
              _botonActions()
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
            Color.fromRGBO(236, 98, 188, 1.0),
            Color.fromRGBO(241, 142, 172, 1.0)
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

  Widget _botonActions() => Table (
    children: [
      TableRow(
        children: [
          _makeBottom(Icons.directions_car, 'Vehículos'),
          _makeBottom(Icons.home, 'Casas'),
        ],
      ),
      TableRow(
        children: [
          _makeBottom(Icons.location_on, 'sd'),
          _makeBottom(Icons.euro_symbol, 'sd'),
        ],
      ),
    ],
  );

  Widget _makeBottom(IconData icon, String nombre) => Container (
    height: 180.0,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(62, 66, 107, 0.7),
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(),
        CircleAvatar(
          backgroundColor: Colors.pinkAccent,
          radius: 35.0,
          child: Icon(icon, color: Colors.white, size: 30.0),
        ),
        Text(nombre, style: TextStyle(color: Colors.pinkAccent)),
        SizedBox()
      ],
    ),
  );
}