import 'package:app_bank_bienes/src/pages/car_pages.dart';
import 'package:app_bank_bienes/src/pages/index_page.dart';
import 'package:app_bank_bienes/src/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.white));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bienes Banco',
      routes: <String, WidgetBuilder> {
        '/index': (context) => IndexPage(),
        '/menu': (context) => MenuPage(),
        '/car': (context) => CarPage()
      },
      home: IndexPage(),
    );
  }
}