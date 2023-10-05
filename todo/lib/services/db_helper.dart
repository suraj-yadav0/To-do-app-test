import 'dart:io';
import 'package:path/path.dart';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static const dbName = "myDatabase.db";
  static const dbVersion = 1;
  static const dbTable = "myTable";
  static const columnId = 'id';
  static const columnName = 'name';
}

// constructor
 
 final DataBaseHelper instance = DataBaseHelper();

 // database intialise

  Database _database;

 Future<Database> get database async {
  if(_database != null) return _database;

  _database  = await initDb();
  return _database;
 }

 initDb() async {
  Directory directory = await getApplicationDocumentsDirectory();
  String path = join(directory.path, DataBaseHelper.dbName);
  return await openDatabase(path,version: DataBaseHelper.dbVersion  );
 }

 Future onCreate(Database db, int version) async {
  db.execute(
    '''
 CREATE TABLE  //dbTable(
//    columnId 
  )


'''
  );
 }