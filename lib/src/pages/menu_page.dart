
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
              _botonActions(context),
              _exchangeRate()
            ],
          ),
        )
      ],
    )
  );

  Widget _title() => SafeArea(
    child: Container (
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text('Menú principal', style:TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 1.0),
          Text('Banco bienes', style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ],
      ),
    )
  );

  Widget _botonActions(BuildContext context) => Table(
    children: [
      TableRow(
        children: [
          _makeBottom(Icons.directions_car, Colors.brown, 'Vehículos', context, "/listCar"),
          _makeBottom(Icons.home, Colors.green, 'Propiedades', context, "/house"),
        ],
      ),
    ],
  );

  Widget _makeBottom(IconData icon, Color color, String nombre, BuildContext context, String direction ) => Container(
    height: 130.0,
    margin: EdgeInsets.all(10.0),
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
    width: 340.0,
    child: Carousel(
      images: [
        AssetImage('assets/1.jpg'),
        AssetImage('assets/2.jpg'),
        AssetImage('assets/3.jpg')
      ],
      dotIncreasedColor: Color.fromRGBO(90,175,204,1),
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 2000),
      dotSize: 6.0,
      dotSpacing: 20.0,
      // dotColor: Colors.lightGreenAccent,
      indicatorBgPadding: 7.0,
      dotBgColor: Color.fromRGBO(90,175,204,0.5),
      borderRadius: true,
      // moveIndicatorFromBottom: 200.0,
      noRadiusForIndicator: true,
      overlayShadow: true,
      overlayShadowColors: Colors.white,
      overlayShadowSize: 0.5,
    )
  );

  Widget _exchangeRate() => SafeArea(
    child: Container (
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
      color: Color.fromRGBO(50, 144, 179, 0.4),
      borderRadius: BorderRadius.circular(20.0)
    ),
      child: Column(
        children: <Widget>[
           Text('Tipo de cambio', style: TextStyle(color: Colors.black, fontSize: 20.0)),
           SizedBox(height: 2.0),
           Text('Compra       	  Venta', style: TextStyle(color: Colors.black, fontSize: 20.0)),
           SizedBox(height: 2.0),
           Text('    581,72            588,06  ', style: TextStyle(color: Colors.black, fontSize: 20.0)),
        ],
      ),
    )
  );
}