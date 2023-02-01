/*import 'package:path_provider/path_provider.dart';

import 'package:sqflite/sqflite.dart';

class DBHelper{
  var noteTable = 'note';
  var columnId = 'note_id';
  var columnTitle = 'note_title';
  var columnDesc = 'note_desc';

  Future<Database> openDB() async{

   var directory = await getApplicationDocumentsDirectory();

   await directory.create(recursive: true);


   var path = directory.path + "note_db.db";

  return await openDatabase(path, version: 1, onCreate: (db, version){

     //create table table_name (colum_name data_type primary key constraints,
     // column_name data_type constraints)
     // column_name data_type constraints)
     // column_name data_type constraints)

     db.execute("create table $noteTable ($columnId integer primary key autoincrement,"
         " $columnTitle text,"
         " $columnDesc text )");
   });

  }

  void addData(String title, String desc) async{
    var myDB = await openDB();
    myDB.insert(noteTable, {columnTitle : title, columnDesc: desc});
  }

  Future<List<Map<String, dynamic>>> fetchData() async{
    var myDB = await openDB();
   return myDB.query(noteTable);
  }


}*/

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  var noteTable = 'note';
  var colunmid = 'note_id';
  var colunmTitle = 'note_title';
  var colunmdisc = 'note_disc';
  var colunmroll = 'note_roll';

  Future<Database> openDB() async {
    var directory = await getApplicationDocumentsDirectory();

    await directory.create(recursive: true);

    var path = directory.path + "note_db.db";

    return await openDatabase(path, version: 1, onCreate: (db, version) {
      db.execute("create table $noteTable("
          "$colunmid integer primary key autoincrement,"
          "$colunmTitle text,"
          "$colunmdisc text,"
          "$colunmroll text)");
    });
  }

  void addData(String title, String disc, String roll) async {
    var myDB = await openDB();
    myDB.insert(
        noteTable, {colunmTitle: title, colunmdisc: disc, colunmroll: roll});
  }

  Future<List<Map<String, dynamic>>> fetchData() async {
    var myDB = await openDB();

    return myDB.query(noteTable);
  }

  void upDateData(int id, String title, String disc, String roll) async {
    var myDB = await openDB();
    myDB.update(
        noteTable, {colunmTitle: title, colunmdisc: disc, colunmroll: roll},
        where: "$colunmid = ?", whereArgs: ['$id']);
  }

  void delData(int id)async{
    var myDB = await openDB();
    myDB.delete(noteTable, where: '$colunmid = ?', whereArgs: ['$id']);
  }

}
