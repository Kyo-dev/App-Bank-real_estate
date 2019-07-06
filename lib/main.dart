import 'package:app_bank_bienes/src/pages/car_pages.dart';
import 'package:app_bank_bienes/src/pages/index_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bienes Banco',
      initialRoute: 'index',
      routes: {
        'car': (context) => CarPage(),
        'index': (context) => IndexPage(),
      },
    );
  }
}