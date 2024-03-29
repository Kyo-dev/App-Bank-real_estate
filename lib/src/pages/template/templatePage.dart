import 'dart:math';

import 'package:flutter/material.dart';

class _TemplateClass{
  _TemplateClass();

  Widget backApp() {
    final baseColor = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.4),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(225, 255, 255, 0.5),
            Color.fromRGBO(255, 255, 255, 0.5)            
          ]
        )
      ),
    );
    final boxD1 = Transform.rotate(
      angle: -pi/4.0,
      child: Container(
      height: 320.0,
      width: 320.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90.0),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(201,64,138,1),
            Color.fromRGBO(100, 26, 107,1)
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
            Color.fromRGBO(100, 26, 107,1),
            Color.fromRGBO(201,64,138,1)
          ]
        )
      ),
      )
    );


    return Stack(
      children: <Widget>[
        baseColor,
        Positioned(
          top: -200,
          left: 150,
          child: boxD1
        ),
        Positioned(
          top: 500,
          left: -100,
          child: boxD2,
        )
      ],
    );
  }
}
  final baseTemplate = new _TemplateClass();

  