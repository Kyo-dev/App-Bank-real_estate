import 'package:app_bank_bienes/src/database/db_bank.dart';
import 'package:flutter/material.dart';

class MapGeolocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ScanModel>>(
      future:  DBbank.db.getAllScan(),
      builder: (BuildContext context, AsyncSnapshot<List<ScanModel>>snapshot) {
        if(!snapshot.hasData){
          return Center(child: CircularProgressIndicator());
        }
        final res = snapshot.data;

        if(res.length == 0){
          Center(
            child: Text('No hay registros'),
          );
        }
        return ListView.builder(
          itemCount: res.length,
          itemBuilder: (context, i) => ListTile(
            leading: Icon(Icons.cloud_queue, color: Theme.of(context).primaryColor),
            title: Text(res[i].value),
            trailing: Icon(Icons.keyboard_arrow_right, color: Theme.of(context).primaryColor),
          )
        );
      },
    );
  }
}