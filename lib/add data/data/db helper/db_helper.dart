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
        "INSERT INTO Home(name, description, price) VALUES ('${model.name}', '${model.description}', '${model.price}')");
    print('Successful');
    return response;
  }

  Future<int> updateMethod(CrudModel model) async {
    var dbReady = await db;
    int response = await dbReady!.rawInsert(
        "UPDATE Home WHERE name = '${model.name}' SET description = '${model.description}', price = '${model.description}'");
    return response;
  }

  Future<int> deleteMethod(String name) async {
    var dbReady = await db;
    int response =
        await dbReady!.rawInsert("DELETE FROM Home WHERE name = '$name'");
    return response;
  }

  Future<CrudModel> readDataMethod(String name) async {
    var dbReady = await db;
    CrudModel response = (await dbReady!
        .rawQuery("SELECT * FROM Home WHERE name = '$name'")) as CrudModel;
    return response;
  }
}
