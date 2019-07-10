
import 'package:app_bank_bienes/src/pages/car_pages.dart';
import 'package:app_bank_bienes/src/pages/house_pages.dart';
import 'package:app_bank_bienes/src/pages/index_page.dart';
import 'package:app_bank_bienes/src/pages/list_car_pages.dart';
import 'package:app_bank_bienes/src/pages/mapGeolocation.dart';
import 'package:app_bank_bienes/src/pages/mapa_page.dart';
import 'package:app_bank_bienes/src/pages/menu_page.dart';
import 'package:app_bank_bienes/src/pages/terrain_pages.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder>getAplicationRoutes() =>(

  <String, WidgetBuilder>{
    '/': (context) => IndexPage(),
    '/menu': (context) => MenuPage(),
    '/listCar': (context) => ListCars(),
    '/car': (context) => CarPage(),
    '/house': (context) => HousePage(),
    '/terrain' : (context) => TerrainPage(),
    '/map' : (context) => MapGeolocation(),
    'mapa' : (context) => MapaPage()
    // '/calc' : (context) => TerrainPage()

  }
);