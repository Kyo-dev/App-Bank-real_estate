import 'package:app_bank_bienes/src/bloc/scans.dart';
import 'package:app_bank_bienes/src/models/scan_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';


class MapaPage extends StatefulWidget {

  @override
  _MapaPageState createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  final MapController map = new MapController();

  String typeMap = 'streets';

  @override
  Widget build(BuildContext context) {

    ScansBloc().getScans();
    final ScanModel scan = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('COORDENADAS'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.my_location, color: Colors.white),
            onPressed: (){
              map.move(scan.getLatLng(), 15);
            },
          )
        ],
      ),
      body: _makeFlutterMap(scan),
      floatingActionButton: _makeFloatingButton(context),
    );
  }

  Widget _makeFloatingButton(BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.repeat),
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: (){
        if(typeMap == 'streets'){
          typeMap = 'dark';
        } else if( typeMap =='dark'){
          typeMap = 'light';
        } else if( typeMap == 'light'){
          typeMap = 'outdoors';
        } else if( typeMap == 'outdoors'){
          typeMap = 'satellite';
        } else {
          typeMap = 'streets';
        }
        setState((){});
      },
    );
  }

  Widget _makeFlutterMap(ScanModel scan){
    return FlutterMap(
      mapController: map,
      options: MapOptions(
        center: scan.getLatLng(),
        zoom: 15
      ),
      layers: [
        _makeMap(),
        _makeMarker(scan)
      ],
    );
  }

  _makeMap(){
    return TileLayerOptions(
      urlTemplate: 'https://api.mapbox.com/v4/'
      '{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}',
      additionalOptions: {
        'accessToken':'pk.eyJ1IjoiY2hyaXNzZGZqa2wiLCJhIjoiY2p4d2p3ZzRnMGdnejNubXZxazdmYmhzdiJ9.WCzHi2mluTRaxb1sIsoxIA',
        'id': 'mapbox.$typeMap'
      }
    );
  }

  _makeMarker(ScanModel scan){
    return MarkerLayerOptions(
      markers: <Marker>[
        Marker(
          width: 100.0,
          height: 100.0,
          point: scan.getLatLng(),
          builder: (context) => Container(
            child: Icon(Icons.location_on, size: 60.0, color: Colors.red),
          )
        )
      ]
    );
  }
}