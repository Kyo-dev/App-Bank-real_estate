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
        primaryColor: Colors.purpleAccent
      ),

    );
  }
}