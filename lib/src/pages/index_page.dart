import 'dart:math';

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
      _backApp(),
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

  Widget _backApp() {
    final baseColor = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );
    final boxD1 = Transform.rotate(
      angle: -pi/5.0,
      child: Container(
      height: 320.0,
      width: 320.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90.0),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(214,99,255,1),
            Color.fromRGBO(214,99,255,1)
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
            Color.fromRGBO(214,99,255,1),
            Color.fromRGBO(214,99,255,1)
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
          left: -50,
          child: boxD1
        ),
        Positioned(
          top: 480,
          left: 200,
          child: boxD2,
        )
      ],
    );
  }
}