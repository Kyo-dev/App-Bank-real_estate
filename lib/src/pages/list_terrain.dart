import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class ListTerrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Stack(
      children: <Widget>[
        baseTemplate.backApp(),
        listItems(context)        
      ],
    ),
  );

Widget listItems(BuildContext context) => ListView(
    children: <Widget>[
      ListTile(
        title: Text('Maserati Grancabrio'),
        subtitle: Text('308.000\$'),
        onTap: (){
          Navigator.pushNamed(context, '/car01');
        },
      ),
      Divider(),
      ListTile(
        title: Text('Volkswagen'),
        subtitle: Text('subtext'),
         onTap: (){
          Navigator.pushNamed(context, '/car01' );
        },
      ),
      Divider(),
    ],
  );

 
}