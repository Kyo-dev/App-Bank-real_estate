import 'package:app_bank_bienes/src/pages/template/templateItem.dart';
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';


import 'package:flutter/material.dart';

class CarPage extends StatefulWidget {

  @override
  CarPageState createState() => CarPageState();
}

class CarPageState extends State<CarPage> {
  int currendIndex = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        baseTemplate.backApp(),
        templateItem.itemApp('https://cdn.motor1.com/images/mgl/XVw3p/s1/maserati-grancabrio-by-pogea-racing.jpg','Maserati Grancabrio','308.000\$','Nuevo del año, descapotable, color oscuro, 2 puertas, interior comodo y espacioso.', context, 20000.0),
        // calc(context)
      ]
    )
  );
}