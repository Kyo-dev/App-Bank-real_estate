
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'dart:ui';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        baseTemplate.backApp(),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _title(),
              _carousel(),
              _botonActions(context)
            ],
          ),
        )
      ],
    )
  );

  Widget _title() => SafeArea(
    child: Container (
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          _makeBottom(Icons.directions_car, Colors.brown, 'Vehículos', context, "/listCar"),
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
    height: 130.0,
    margin: EdgeInsets.all(20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(50, 144, 179, 0.4),
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(),
        CircleAvatar(
          backgroundColor: color,
          radius: 25.0,
          child: Icon(icon, color: Colors.white, size: 28.0),
        ),
        RaisedButton(
          shape: StadiumBorder(),
          color: Color.fromRGBO(90,175,204,1),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.0), 
              child: Text(nombre, style: TextStyle(fontSize: 15.0, color: Colors.white)),
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

  Widget _carousel() => SizedBox(
    height: 200.0,
    width: 500.0,
    child: Carousel(
      images: [
        AssetImage('assets/1.jpg'),
        AssetImage('assets/2.jpg')
      ],
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 2000),
    )
  );

}