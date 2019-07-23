import 'package:app_bank_bienes/src/pages/template/templateList.dart';
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';


class ListTerrain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: <Widget>[
        baseTemplate.backApp(),
        templateList.listItems(context)
      ]
    )
      
    );
  }
}