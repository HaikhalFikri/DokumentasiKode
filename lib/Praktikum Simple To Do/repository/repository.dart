import 'package:flutter_1/Praktikum%20Simple%20To%20Do/repository/database_conection.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late DatabaseConnection _databaseConnection;
  static Database? _dbTodo;

  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  Future<Database> get dbTodo async {
    if (_dbTodo != null) {
      return _dbTodo!;
    } else {
      _dbTodo = await _databaseConnection.setDatabase();
      return _dbTodo!;
    }
  }

  // Method untuk menambahkan data ke dalam database
  Future<int> insertData(String table, Map<String, dynamic> data) async {
    var connection = await dbTodo;
    var result = await connection.insert(table, data);
    return result;
  }

  // Method untuk membaca semua data dari database
  Future<List<Map<String, dynamic>>> readData(String table) async {
    var connection = await dbTodo;
    var result = await connection.query(table);
    return result;
  }

  // Method untuk membaca data berdasarkan ID
  Future<List<Map<String, dynamic>>> readDataById(
      String table, int itemId) async {
    var connection = await dbTodo;
    var result =
        await connection.query(table, where: 'id=?', whereArgs: [itemId]);
    return result;
  }

  // Method untuk memperbarui data di database
  Future<int> updateData(String table, Map<String, dynamic> data) async {
    var connection = await dbTodo;
    var result = await connection
        .update(table, data, where: 'id=?', whereArgs: [data['id']]);
    return result;
  }

  // Method untuk menghapus data dari database
  Future<int> deleteData(String table, int itemId) async {
    var connection = await dbTodo;
    var result =
        await connection.rawDelete("DELETE FROM $table WHERE id = ?", [itemId]);
    return result;
  }
}
