import 'package:app_bank_bienes/src/bloc/scans.dart';
import 'package:app_bank_bienes/src/models/scan_model.dart';
import 'package:flutter/material.dart';
import 'package:app_bank_bienes/src/utils/scan_utils.dart' as util;

class MapGeolocation02 extends StatelessWidget {

  final scansBloc = new ScansBloc();
  
  @override
  Widget build(BuildContext context) {
    scansBloc.getScans();
    return StreamBuilder<List<ScanModel>>(
      stream:  scansBloc.scansStream,
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
          itemCount: 1,
          itemBuilder: (context, i) => Dismissible(
            key: UniqueKey(),
            background: Container(color: Colors.red),
            onDismissed: (direction) => scansBloc.deleteScans(res[i].id),
            child: ListTile(
              leading: Icon(Icons.cloud_queue, color: Theme.of(context).primaryColor),
              title: Text(res[1].value),
              // subtitle: Text('ID: ${res[i].id}'),
              trailing: Icon(Icons.keyboard_arrow_right, color: Theme.of(context).primaryColor),
              onTap: () => util.openScan(context , res[7]),
            )
          ),
        );
      },
    );
  }
}