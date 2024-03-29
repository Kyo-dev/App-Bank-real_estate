
import 'package:app_bank_bienes/src/pages/template/templateItem.dart';
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class TerrainPage extends StatefulWidget {
  
  @override
  _TerrainPageState createState() => _TerrainPageState();
}

class _TerrainPageState extends State<TerrainPage> {
  final title = TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold);

  final subTitle = TextStyle(fontSize: 17.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
     children: <Widget>[
            baseTemplate.backApp(),
            templateItem.itemApp('https://static1.sosiva451.com/1687646/870724e4-68ee-429c-939f-75a83a2d894f_u_small.jpg','  Casa de lujo','317.000\$','Amplia zona verde, casa con 2 pisos, balcon, 4 cuartos, 2 baños, parqueo y picina en la parte de atras.', context, 317.000)
          ]
    )
  );
}