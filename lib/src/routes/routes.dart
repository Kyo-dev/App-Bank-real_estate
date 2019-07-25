import 'package:app_bank_bienes/src/pages/index_page.dart';
import 'package:app_bank_bienes/src/pages/list_car_pages.dart';
import 'package:app_bank_bienes/src/pages/list_terrain.dart';
import 'package:app_bank_bienes/src/pages/mapGeolocation.dart';
import 'package:app_bank_bienes/src/pages/mapa_page.dart';
import 'package:app_bank_bienes/src/pages/menu_page.dart';
import 'package:app_bank_bienes/src/pages/product_page.dart';
import 'package:app_bank_bienes/src/pages/product_page_car02.dart';
import 'package:app_bank_bienes/src/pages/product_page_car03.dart';
import 'package:app_bank_bienes/src/pages/product_page_t01.dart';
import 'package:app_bank_bienes/src/pages/product_page_t02.dart';

import 'package:flutter/material.dart';

Map<String, WidgetBuilder>getAplicationRoutes() =>(

  <String, WidgetBuilder>{
    '/': (context) => IndexPage(),
    '/menu': (context) => MenuPage(),

    '/listCar': (context) => ListCars(),
    '/listTerrain' : (context) => ListTerrain(),

    // '/car01' : (context) => ProductPage(),

    '/car01': (context) => ProductPage(),
    '/car02' : (context) => ProductPage02(),
    '/car03' : (context) => ProductPage03(),

    '/terrain01': (context) => ProductPageT01(),
    '/terrain02': (context) => ProductPageT02(),

    '/map' : (context) => MapGeolocation(),
    'mapa' : (context) => MapaPage()
  }
);