import 'dart:math';

import 'package:app_bank_bienes/src/pages/providers/routes.dart';
import 'package:flutter/material.dart';

class ListCars extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        _backApp(),
        _list()
      ],
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
          top: -100,
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


  Widget _list() => FutureBuilder(
    future: routeProvider.loadData(),
    initialData: [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
      return ListView(
        children: _listCar(snapshot.data)
      );
    }
  );
  

  List<Widget>_listCar(List<dynamic> data)  {

    final List<Widget> items = [];
    data.forEach((opt){
    final widgetTemp = ListTile(
      title: Text(opt['text']),
      onTap: (){

      },
    );
    items..add(widgetTemp)
         ..add(Divider());

    });
    return items;
  }
  
}