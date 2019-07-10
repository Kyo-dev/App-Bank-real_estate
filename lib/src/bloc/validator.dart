import 'package:app_bank_bienes/src/models/scan_model.dart';

import 'dart:async';

class Validators{

  final validatorGeo = StreamTransformer<List<ScanModel>, List<ScanModel>>.fromHandlers(
    handleData: (scans, sink){

      final geoScans = scans.where((s)=> s.type =='geo').toList();

      sink.add(geoScans);

    }
  );

  final validatorHttp = StreamTransformer<List<ScanModel>, List<ScanModel>>.fromHandlers(
    handleData: (scans, sink){

      final geoScans = scans.where((s)=> s.type =='http').toList();

      sink.add(geoScans);

    }
  );


}