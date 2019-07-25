import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class ListTerrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(100, 26, 107,1),
      title: Text('Volver al menú principal',style: TextStyle(fontSize: 25.0, color: Colors.white))
    ),
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
        title: Text('Casa de lujo', style: TextStyle(fontSize: 25.0, color: Colors.black)),
        subtitle: Text('317.000\$',style: TextStyle(fontSize: 20.0, color: Colors.black)),
        trailing: Icon(Icons.keyboard_arrow_right, color: Theme.of(context).primaryColor),
        onTap: (){
          Navigator.pushNamed(context, '/terrain01');
        },
      ),
      Divider(),
      ListTile(
        title: Text('Volkswagen' ,style: TextStyle(fontSize: 25.0, color: Colors.black)),
        subtitle: Text('subtext' ,style: TextStyle(fontSize: 20.0, color: Colors.black)),
        trailing: Icon(Icons.keyboard_arrow_right, color: Theme.of(context).primaryColor),
         onTap: (){
          Navigator.pushNamed(context, '/terrain02' );
        },
      ),
      Divider(),
    ],
  );
}