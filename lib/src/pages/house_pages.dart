import 'package:app_bank_bienes/src/database/db_bank.dart';
import 'package:app_bank_bienes/src/pages/calculator.dart';
import 'package:app_bank_bienes/src/pages/mapGeolocation.dart';
// import 'package:qrcode_reader/qrcode_reader.dart';
import 'package:flutter/material.dart';

class HousePage extends StatefulWidget {
  @override
  _HousePageState createState() => _HousePageState();
}

class _HousePageState extends State<HousePage> {

  final title = TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold);
  final subTitle = TextStyle(fontSize: 17.0, color: Colors.grey);
  int currendIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: <Widget>[

        ],
      ),
          body: _callPage(currendIndex),
          bottomNavigationBar: _bottomNavigationBar(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.filter_center_focus),
            onPressed: _scanQR,
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

  _scanQR() async {
// https://github.com/lKyoto
// geo:34.98204841631348,135.7508717493164
    String futureString = 'https://github.com/lKyoto';
    
    // try {
    //   futureString = await new QRCodeReader().scan();
    // } catch (e) {
    //   futureString = e.toString();
    // }
    // print('futureString: $futureString');

    if(futureString != null){
      final scan = ScanModel(value: futureString);
      DBbank.db.insertScan(scan);
    }
  }

}