import 'package:app_bank_bienes/src/pages/template/templateItem.dart';
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class CarPage03 extends StatefulWidget {

  @override
  CarPageState createState() => CarPageState();
}

class CarPageState extends State<CarPage03> {
  int currendIndex = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            baseTemplate.backApp(),
            templateItem.itemApp('http://www.veoautos.cl/wp-content/uploads/2018/08/Escarabajo-3-1.jpg','Volkswagen tipo 1','22.500\$','En venta Volkswagen tipo 1, puntura e interior renovano', context, 22.500)
          ]
        )
      );
}