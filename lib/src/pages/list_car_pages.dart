import 'package:app_bank_bienes/src/pages/providers/routes.dart';
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class ListCars extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        baseTemplate.backApp(),
        _list()
      ],
    ),
  );

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