//
// * This file was no used in the application *
// I was not able to implement a database to safe events.

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:project4/Events.dart';

class DBHelper {

  static final _dbName = "events.db";
  static final dbVersion = 1;
  static final table = "event_table";
  static final columnId = 'id';
  static final columnMonth = 'month';
  static final columnDay = 'day';
  static final columnYear = 'year';
  static final columnEvent = 'event';

  static Database? _database;
  DBHelper._();

  static final DBHelper db = DBHelper._();

  Future<Database?> get database async{       //async - something in the function is in another thread
    if(_database != null) return _database;   //if db has already been created, return
    _database = await _initDatabase();        //if not, create and return
    return _database;                         //await is an async call
  }

  _initDatabase() async{
    String path = join(await getDatabasesPath(), _dbName);
    return await openDatabase(path,
        version: dbVersion,
        onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async{
    await db.execute('''CREATE TABLE $table(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnMonth INTEGER NOT NULL,
        $columnDay INTEGER NOT NULL,
        $columnYear INTEGER NOT NULL,
        $columnEvent TEXT NOT NULL)''');
  }

  Future<int?> insert(Event2 e) async{
    Database? d = await db.database;
    // return await d?.insert(table, {'name': p.name, 'department':p.department});
    // return await d?.insert(table,e.toJson());
  }

  // Future<int?> delete(int id) async {
  //   Database? d = await db.database;
  //   return await d?.delete(table, where: '$columnId = ?', whereArgs: [id]);
  // }

  Future<List<Map<String, dynamic>>?> getRows() async {
    Database? d = await db.database;
    return await d?.query(table);
  }
}