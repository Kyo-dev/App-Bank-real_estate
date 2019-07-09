import 'dart:io';

import 'package:app_bank_bienes/src/models/scan_model.dart';
export 'package:app_bank_bienes/src/models/scan_model.dart';
import 'package:sqflite/sqflite.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DBbank{
  
  static Database _database;

  static final DBbank db = DBbank._();

  DBbank._();

  Future<Database> get database async {

    if(_database !=null) return _database;

    _database = await initDB();

    return _database;
  }

  initDB() async {

    Directory documentsDirectoty = await getApplicationDocumentsDirectory();

    final path = join(documentsDirectoty.path, 'BankDB.db');

    return await openDatabase (
      path,
      version: 1,
      onOpen: (db){},
      onCreate: ( Database db, int version ) async {
        await db.execute(
          'CREATE TABLE Scans ( '
             'id INTEGER PRIMARY KEY, '
             'type TEXT, '
             'value TEXT '
          ')'
        );
      }
    );
  }

  //CRUD

  //CREATE

  insertScan(ScanModel newScan) async {

    final db = await database; 

    final res = await db.insert('Scans', newScan.toJson());

    return res;
  }

  //SELECT 

  //GET BY ID

  Future <ScanModel>getScanById(int id) async {

    final db = await database;

    final res = await db.query('Scans', where: 'id = ?', whereArgs: [id]);

    return res.isNotEmpty ? ScanModel.fromJson(res.first) : null;

  }

  Future<List<ScanModel>>getAllScan() async{

    final db = await database; 

    final res = await db.query('Scans');

    List<ScanModel> list = res.isNotEmpty 
                         ? res.map((c) => ScanModel.fromJson(c)).toList()
                         :[];
    return list;

  }

   Future<List<ScanModel>>getAllTypeScan(String type) async{

    final db = await database; 

    final res = await db.rawQuery("SELECT * FROM Scans WHERE type = '$type'");

    List<ScanModel> list = res.isNotEmpty 
                         ? res.map((c) => ScanModel.fromJson(c)).toList()
                         :[];
    return list;
    
  }

  updataScan(newScan) async {
    
    final db = await database;
    
    final res = await db.update('Scans', newScan.toJson(), where: 'id = ?', whereArgs: [newScan.id] );

    return res;


  }

  Future<int>deleteScan(int id) async {

    final db = await database;

    final res = await db.delete('Scans', where: 'id = ?', whereArgs: [id] );

    return res;

  }


  Future<int>deleteScanAll(int id) async {

    final db = await database;

    final res = await db.rawDelete('DELETE FROM Scans');

    return res;

  }


}