import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  get onCreateMethod => null;

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "dbase.db");

    var db = await openDatabase(path, version: 1, onCreate: onCreateMethod);
    return db;
  }
}
