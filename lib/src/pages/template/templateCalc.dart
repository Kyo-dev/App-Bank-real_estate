import 'package:flutter/material.dart';

class _TemplateCalc{
  _TemplateCalc();

  // Widget calc(int month, double price, double tax){
  //   double aux = (price/month) * tax;
  // }

  Widget txtPrice() => TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    // labelText: '',
  ),
);
}
final templateCalc = new _TemplateCalc();
