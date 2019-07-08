import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _RouteProvider{
  _RouteProvider();
  List<dynamic> sections =[];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/route_opt.json');
      Map dataMap = json.decode( resp );
      sections = dataMap['routes'];
      return sections;
   }

}

final routeProvider = new _RouteProvider();