// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// void main() async {
//   // Avoid errors caused by flutter upgrade.
//   // Importing 'package:flutter/widgets.dart' is required.
//   WidgetsFlutterBinding.ensureInitialized();
//   // Open the database and store the reference.
//   final database = openDatabase(
//     // Set the path to the database. Note: Using the `join` function from the
//     // `path` package is best practice to ensure the path is correctly
//     // constructed for each platform.
//     join(await getDatabasesPath(), 'books_database.db'),
//     // When the database is first created, create a table to store dogs.
//     onCreate: (db, version) {
//       // Run the CREATE TABLE statement on the database.
//       return db.execute(
//         'CREATE TABLE books(id INTEGER PRIMARY KEY, name TEXT, category TEXT, author TEXT, price TEXT)',
//       );
//     },
//     // Set the version. This executes the onCreate function and provides a
//     // path to perform database upgrades and downgrades.
//     version: 1,
//   );
//
//   // Define a function that inserts dogs into the database
//   Future<void> insertBook(Book book) async {
//     // Get a reference to the database.
//     final db = await database;
//
//     // Insert the Dog into the correct table. You might also specify the
//     // `conflictAlgorithm` to use in case the same dog is inserted twice.
//     //
//     // In this case, replace any previous data.
//     await db.insert(
//       'books',
//       book.toMap(),
//       conflictAlgorithm: ConflictAlgorithm.replace,
//     );
//   }
//
//   // A method that retrieves all the dogs from the dogs table.
//   Future<List<Book>> books() async {
//     // Get a reference to the database.
//     final db = await database;
//
//     // Query the table for all The Dogs.
//     final List<Map<String, dynamic>> maps = await db.query('books');
//
//     // Convert the List<Map<String, dynamic> into a List<Dog>.
//     return List.generate(maps.length, (i) {
//       return Book(
//           id: maps[i]['id'],
//           name: maps[i]['name'],
//           category: maps[i]['category'],
//           author: maps[i]['author'],
//           price: maps[i]['price']
//       );
//     });
//   }
//
//   Future<void> updateBook(Book book) async {
//     // Get a reference to the database.
//     final db = await database;
//
//     // Update the given Dog.
//     await db.update(
//       'books',
//       book.toMap(),
//       // Ensure that the Dog has a matching id.
//       where: 'id = ?',
//       // Pass the Dog's id as a whereArg to prevent SQL injection.
//       whereArgs: [book.id],
//     );
//   }
//
//   Future<void> deleteBook(int id) async {
//     // Get a reference to the database.
//     final db = await database;
//
//     // Remove the Dog from the database.
//     await db.delete(
//       'books',
//       // Use a `where` clause to delete a specific dog.
//       where: 'id = ?',
//       // Pass the Dog's id as a whereArg to prevent SQL injection.
//       whereArgs: [id],
//     );
//   }
//
//   // Create a Dog and add it to the dogs table
//   var fido = const Book(
//       id: 0,
//       name: 'Fido',
//       category: 'codeware',
//       author: 'fiction',
//       price: '200'
//   );
//
//   await insertBook(fido);
//
//   var dido = const Book(
//       id: 0,
//       name: 'dido',
//       category: 'codeware',
//       author: 'fiction',
//       price: '200'
//   );
//   var aido = const Book(
//       id: 0,
//       name: 'aido',
//       category: 'codeware',
//       author: 'fiction',
//       price: '200'
//   );
//
//   await insertBook(dido);
//   await insertBook(aido);
//
//   // Now, use the method above to retrieve all the dogs.
//   print(await books()); // Prints a list that include Fido.
//
//   // Update Fido's age and save it to the database.
//   // fido = Book(
//   //   id: fido.id,
//   //   name: fido.name,
//   //   category : 'rochak',
//   //   author: fido.category,
//   //   price: '100'
//   // );
//   // await updateBook(fido);
//
//   // Print the updated results.
//   // print(await books()); // Prints Fido with age 42.
//   //
//   // // Delete Fido from the database.
//   // await deleteBook(fido.id);
//
//   // Print the list of dogs (empty).
//   print(await books());
// }
//
// class Book extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Book Store'),
//         ),
//         body: Center(
//             child: Column(
//               children: [
//                 ElevatedButton(
//                     onPressed: null,
//                     child: Text('Insert'))
//               ],
//
//             )
//
//         ));
//   }
//   final int id;
//   final String name;
//   final String category;
//   final String author;
//   final String price;
//
//
//   const Book({
//     required this.id,
//     required this.name,
//     required this.category,
//     required this.author,
//     required this.price,
//   });
//
//   // Convert a Dog into a Map. The keys must correspond to the names of the
//   // columns in the database.
//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name,
//       'category': category,
//       'author': author,
//       'price': price
//     };
//   }
//
//   // Implement toString to make it easier to see information about
//   // each dog when using the print statement.
//   // @override
//   // String toString() {
//   //   return 'Book{id: $id, name: $name, category: $category, author: $author, price :$price}';
//   // }
// }
















//
//
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
//
//
// class BooksDatabase {
//   var database;
//   setDatabase() async{
//     var directory = await getApplicationDocumentsDirectory();
//     String path = join(directory.path, _dbName);
//     database= await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
//     return database;
//
//   }
//
//   static final _dbName = 'myDatabase.db';
//   static final _dbVersion = 1;
//   static final _tableName = 'myTable';
//   static final cloumnName= 'name';
//
//   BooksDatabase._privateConstructor();
//
//   static final BooksDatabase instance = BooksDatabase._privateConstructor();
//
//   static Database _database;
//
//   Future<Database> get database async {
//     if (_database != null) return _database;
//
//     _database = await _initiateDatabase();
//     return _database;
//   }
//
//    // _initiateDatabase() async {
//   //   Directory directory = await getApplicationDocumentsDirectory();
//   //   String path = join(directory.path, _dbName);
//   //   return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
//   // }
//
//   _onCreate(Database database, int version) {
//     database.execute('''
//       Create TABLE $_tableName (
//       _id INTEGER PRIMARY KEY,
//       name TEXT NOT NULL)
//       ''');
//   }
//
//    insert(Map<String, dynamic> row) async{
//     Database db = database;
//     return await db.insert(_tableName, row);
//   }
//
//   Future<List<Map<String, dynamic>>> queryAll() async{
//     Database db= database;
//     return await db.query(_tableName);
//   }
//   //
//   // Future<int> update(Map<String,dynamic> row) async{
//   //   Database db= await instance.database;
//   //   int id = row['id'];
//   //   return await db.update(_tableName, row, where: '_id=?', whereArgs: [id] );
//   // }
//   //
//   // Future<int> delete(int id) async{
//   //   Database db= await instance.database;
//   //   return await db.delete(_tableName, where: '_id=?', whereArgs:[id] );
//   //
//   // }
//
// }
