import 'package:app_bank_bienes/src/bloc/scans.dart';
import 'package:app_bank_bienes/src/models/scan_model.dart';
// import 'package:app_bank_bienes/src/database/db_bank.dart';
import 'package:app_bank_bienes/src/pages/calculator.dart';
import 'package:app_bank_bienes/src/pages/mapGeolocation.dart';
import 'package:app_bank_bienes/src/utils/scan_utils.dart' as util;
import 'package:qrcode_reader/qrcode_reader.dart';
import 'package:flutter/material.dart';

class HousePage extends StatefulWidget {
  @override
  _HousePageState createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {

  final scansBloc = new ScansBloc();

  final title = TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold);
  final subTitle = TextStyle(fontSize: 17.0, color: Colors.grey);
  int currendIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete_forever, color: Colors.white),
            onPressed: scansBloc.deleteAllScans,
          )
        ],
      ),
          body: _callPage(currendIndex),
          bottomNavigationBar: _bottomNavigationBar(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.filter_center_focus),
            onPressed: ()=> _scanQR(context),
            backgroundColor: Theme.of(context).primaryColor,
          ),
    );
  }

  Widget _bottomNavigationBar() =>BottomNavigationBar(
    currentIndex: currendIndex,
    onTap: (index) {
      setState(() {
        currendIndex = index;
      });
    },
    items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.map), title: Text('Mapa')),
      BottomNavigationBarItem(
          icon: Icon(Icons.iso), title: Text('Calculadora'))
    ],
  );

  Widget _callPage(currentIndex) {
    switch (currentIndex) {
      case 0:
        return MapGeolocation();
      case 1:
        return CalculatorPage();

      default:
        return CalculatorPage();
    }
  }

  _scanQR(BuildContext context) async {
// https://github.com/lKyoto
// geo:34.98204841631348,135.7508717493164
    String futureString;
    
    try {
      futureString = await new QRCodeReader().scan();
    } catch (e) {
      futureString = e.toString();
    }
    print('futureString: $futureString');

    if(futureString != null){
      // DBbank.db.insertScan(scan);
      final scan = ScanModel(value: futureString);
      scansBloc.addScan(scan);


      // final scan2 = ScanModel(value: 'geo:34.98204841631348,135.7508717493164');
      // scansBloc.addScan(scan2);

      util.openScan(context, scan);
    }
  }

}