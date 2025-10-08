import 'package:sqflite/sqflite.dart';

class SqlDb{
  static Database? _db;
Future<Database?> get db async{
  if(_db==null){
    _db = await initDb();
    return _db;
  }else{
    return _db;
  }
}
 //create database
  initDb() async{
    String dbPath =await getDatabasesPath();
    String path = dbPath + 'notes.db';
    Database db = await openDatabase(path,onCreate:_onCreate,version: 1,onUpgrade: _onUpgrade);
    return db;
  }
  _onCreate(Database db,int version) async{
    await db.execute('''
    CREATE TABLE "notes"(
    "id"  INTEGER AUTOINCREMENT NOT NULL PRIMARY KEY,
    "note" TEXT NOT NULL
    )
    ''');
    print('table created');

  }
  _onUpgrade(Database db,int oldVersion,int newVersion) async{
    print('table updated');

  }
  //select
readData(String sql) async{
  Database? myDb = await db;
  List<Map> response = await myDb!.rawQuery(sql);
  return response;
}
//delete
  deleteData(String sql) async{
    Database? myDb = await db;
    int response = await myDb!.rawDelete(sql);
    return response;
  }
//update
  updateData(String sql) async{
    Database? myDb = await db;
    int response = await myDb!.rawUpdate(sql);
    return response;
  }
//insert
  insertData(String sql) async{
    Database? myDb = await db;
   int response = await myDb!.rawInsert(sql);
    return response;
  }
}