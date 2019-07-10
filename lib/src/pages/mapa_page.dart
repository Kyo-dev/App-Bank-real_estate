import 'package:app_bank_bienes/src/models/scan_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
class MapaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final ScanModel scan = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('COORDENADAS'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.my_location),
            onPressed: (){},
          )
        ],
      ),
      body: _makeFlutterMap(scan)
    );
  }

  Widget _makeFlutterMap(ScanModel scan){
    return FlutterMap(
      options: MapOptions(
        center: scan.getLatLng(),
        zoom: 15
      ),
      layers: [
        _makeMap()
      ],
    );
  }

  _makeMap(){
    return TileLayerOptions(
      urlTemplate: 'https://api.mapbox.com/v4/'
      '{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}',
      additionalOptions: {
        'accessToken':'pk.eyJ1IjoiY2hyaXNzZGZqa2wiLCJhIjoiY2p4d2p3ZzRnMGdnejNubXZxazdmYmhzdiJ9.WCzHi2mluTRaxb1sIsoxIA',
        'id': 'mapbox.streets'
      }
    );
  }
}