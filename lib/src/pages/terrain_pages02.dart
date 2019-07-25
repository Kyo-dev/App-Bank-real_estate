
import 'package:app_bank_bienes/src/pages/template/templateItem.dart';
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class TerrainPage02 extends StatefulWidget {
  
  @override
  _TerrainPageState createState() => _TerrainPageState();
}

class _TerrainPageState extends State<TerrainPage02> {
  final title = TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold);

  final subTitle = TextStyle(fontSize: 17.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
     children: <Widget>[
            baseTemplate.backApp(),
            templateItem.itemApp('http://fotos.crminmobiliario.com/cliente/17190/fotosproductos/interior-predio-terreno-comercial-en-venta-en-colonia-villa-hermosa-hermosillo-16.jpg','Apto para construcción','45.000\$','Cerca de la carreta principal, cuanta con los permisos de construcción y disponibilidad de agua', context, 45.000)
          ]
    )
  );
}