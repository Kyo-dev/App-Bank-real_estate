import 'package:flutter/material.dart';

class _TemplateList{
  
  _TemplateList();

  Widget listItems(BuildContext context) => ListView(
    children: <Widget>[
      ListTile(
        title: Text('sdfsdfa'),
        subtitle: Text('subtext'),
        onTap: (){
          Navigator.pushNamed(context, '/terrain');
        },
      ),
      Divider(),
      ListTile(
        title: Text('sdfsdfa'),
        subtitle: Text('subtext'),
         onTap: (){
          Navigator.pushNamed(context, '/terrain' );
        },
      ),
      Divider(),
      ListTile(
        title: Text('sdfsdfa'),
        subtitle: Text('subtext'),
         onTap: (){
          Navigator.pushNamed(context, '/terrain' );
        },
      ),
      Divider()
    ],
  );
}

final templateList = new _TemplateList();