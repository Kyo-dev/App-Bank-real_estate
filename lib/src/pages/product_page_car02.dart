import 'package:app_bank_bienes/src/bloc/scans.dart';
// import 'package:app_bank_bienes/src/models/scan_model.dart';

import 'package:app_bank_bienes/src/pages/car_pages02.dart';
import 'package:app_bank_bienes/src/pages/mapGeolocation.dart';
import 'package:app_bank_bienes/src/pages/template/templateCalc.dart';
// import 'package:app_bank_bienes/src/pages/mapGeolocation02.dart';
// import 'package:app_bank_bienes/src/utils/scan_utils.dart' as util;
// import 'package:qrcode_reader/qrcode_reader.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ProductPage02 extends StatefulWidget {
  @override
  ProductPageState createState() => ProductPageState();
}

class ProductPageState extends State<ProductPage02> {

  final scansBloc = new ScansBloc();

  final title = TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold);
  final subTitle = TextStyle(fontSize: 17.0, color: Colors.grey);
  int currendIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Regresar',style: TextStyle(fontSize: 25.0, color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
            onPressed: ()=> Share.share('https://www.facebook.com/BancoBCR/'),
            
          )
        ],
      ),
          body: _callPage(currendIndex),
          bottomNavigationBar: _bottomNavigationBar(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.filter_center_focus),
          //   onPressed: ()=> _scanQR(context),
          //   backgroundColor: Theme.of(context).primaryColor,
          // ),
          // floatingActionButton: FloatingActionButton(
          //  child:  Icon(Icons.iso),
          //   onPressed: ()=> {},
          //   backgroundColor: Theme.of(context).primaryColor,
          // ),
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
          icon: Icon(Icons.home), title: Text('Propiedad')),
      BottomNavigationBarItem(
          icon: Icon(Icons.iso), title: Text('Calculadora')),
      BottomNavigationBarItem(
          icon: Icon(Icons.map), title: Text('Ubicación'))
    ],
  );

  Widget _callPage(currentIndex) {
    switch (currentIndex) {
      case 0:
        return CarPage02();
      case 1:
        return MyHomePage();
      case 2:
        return MapGeolocation();
      default:
        return CarPage02();
    }
  }

//   _scanQR(BuildContext context) async {
// // https://github.com/lKyoto
// // geo:34.98204841631348,135.7508717493164
//     String futureString;
    
//     try {
//       futureString = await new QRCodeReader().scan();
//     } catch (e) {
//       futureString = e.toString();
//     }
//     print('futureString: $futureString');

//     if(futureString != null){
//       // DBbank.db.insertScan(scan);
//       final scan = ScanModel(value: futureString);
//       scansBloc.addScan(scan);


//       // final scan2 = ScanModel(value: 'geo:34.98204841631348,135.7508717493164');
//       // scansBloc.addScan(scan2);

//       util.openScan(context, scan);
//     }
//   }

}