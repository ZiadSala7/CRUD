import 'package:crud_app/add%20data/data/models/crud_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

class DbHelper {
  Database? _db;
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "dbase.db");

    var db = await openDatabase(path, version: 1, onCreate: onCreateMethod);
    return db;
  }

  onCreateMethod(Database db, int version) async {
    await db.execute(
        "CREATE TABLE Home(name TEXT, description TEXT, price DOUBLE)");
  }

  Future<Database?> get db async {
    _db ??= await initDB();
    return _db;
  }

  Future<int> createMethod(CrudModel model) async {
    var dbReady = await db;
    int response = await dbReady!.rawInsert(
        "INSERT INTO Home(name, description, price) VALUES (${model.name}, ${model.description}, ${model.price})");
    return response;
  }

  Future<int> updateMethod(CrudModel model) async {
    var dbReady = await db;
    int response = await dbReady!.rawInsert(
        "UPDATE Home WHERE name = ${model.name}, description = ${model.description}, price = ${model.description}");
    return response;
  }
}
