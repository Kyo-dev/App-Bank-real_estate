import 'package:app_bank_bienes/src/pages/template/templateItem.dart';
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class CarPage02 extends StatefulWidget {

  @override
  CarPageState createState() => CarPageState();
}

class CarPageState extends State<CarPage02> {
  int currendIndex = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            baseTemplate.backApp(),
            templateItem.itemApp('https://lanota-latina.com/wp-content/uploads/2016/09/Carros-en-venta-en-Florida-800x500_c.jpg','Toyota','2.900\$','Cuatro puertas, 4x4, color azul oscuro, modelo 2001 precion negociable', context, 2.900)
          ]
        )
      );
}