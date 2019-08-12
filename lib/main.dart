import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:app_bank_bienes/src/routes/routes.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bienes Banco',
      initialRoute: '/',
      routes: getAplicationRoutes(),
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(163, 157, 160, 1.0),
        primaryColor:  Color.fromRGBO(100, 26, 107,1),
      ),
    );
  }
}