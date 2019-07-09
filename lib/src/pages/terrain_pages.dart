
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class TerrainPage extends StatelessWidget {
  
  final title = TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold);
  final subTitle = TextStyle(fontSize: 17.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        baseTemplate.backApp(),
          // templateItem.itemApp('https://cdn.motor1.com/images/mgl/XVw3p/s1/maserati-grancabrio-by-pogea-racing.jpg', 'title','subTitle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. sollicitudine viverra odio, vitae imperdiet tortor ex eleifend purus. Etiam efficitur fringilla mi et porttitor. Vivamus erat ligula, laoreet vitae faucibus id, dapibus id lorem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', context, current)
        ],
    )
  );

}