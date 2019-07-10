import 'dart:async';

import 'package:app_bank_bienes/src/database/db_bank.dart';

class ScansBloc {
  static final ScansBloc _singleton = new ScansBloc._internal();

  factory ScansBloc(){
    return _singleton;
  }

  ScansBloc._internal(){
    getScans();
  }

  final _scansControlloer = StreamController<List<ScanModel>>.broadcast();

  Stream<List<ScanModel>> get scansStream => _scansControlloer.stream;



  dispose(){
    _scansControlloer?.close();
  }

  addScan(ScanModel scan) async{
    await DBbank.db.insertScan(scan);
    getScans();
  }

  getScans()async{
    _scansControlloer.sink.add(await DBbank.db.getAllScan());
  }

  deleteScans(int id)async{
    await DBbank.db.deleteScan(id);
    getScans();
  }

  deleteAllScans()async{
    await DBbank.db.deleteScanAll();
    getScans();
  }

}