import 'dart:math';

import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _page1(),
        _page2(context)
      ],
    )
  );

  Widget _page1() => Stack(
    children: <Widget>[
      _backColor(),
      _imgGround(),
    ],
  );

  Widget _page2(context) => Stack(
    children: <Widget>[
      baseTemplate.backApp(),
      Container (
        child: Center(
          child: RaisedButton(
            shape: StadiumBorder(),
            color:Color.fromRGBO(214,99,255,1),           
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text('Bienvenido', style: TextStyle(fontSize: 20.0, color: Colors.white)),
            ),
              onPressed: () {
                Navigator.pushNamed(context, "/menu");
              }
          ),
        ),
      )
    ],
  );

  Widget _backColor() => Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.white
  );
 
  Widget _imgGround() => Container (
    // width: double.infinity,
    height: double.infinity,
    child: Image(
      image: AssetImage('assets/bcr-thumb.png'),
      // fit: BoxFit.cover
    ),
  );

}