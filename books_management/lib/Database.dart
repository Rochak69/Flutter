import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Books {
  final String name;
  final String author;
  final String category;
  final String price;

  const Books({
    required this.name,
    required this.author,
    required this.category,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'author': author,
      'category': category,
      'price': price,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return this.name + this.author + this.category + this.price;
  }
}

class DB {
  dynamic database;

  initDb() async {
    print("initDB");

    // Open the database and store the reference.

    database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'books_store_database.db'),
      // When the database is first created, create a table to store dogs.
      onCreate: (db, version) {
        // Run the CREATE TABLE statement on the database.
        return db.execute(
          'CREATE TABLE books(name TEXT, author TEXT, category TEXT, price TEXT)',
        );
      },

      version: 1,
    );
  }

  DB() {
    // Avoid errors caused by flutter upgrade.
    initDb();
  }

  Future<void> insertBook(Books book) async {
    // Get a reference to the database.
    final db = await database;
    await db.insert(
      'books',
      book.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print("Sucessfully inserted");
  }

  Future<List<Books>> queryAll() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('books');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Books(
        name: maps[i]['name'],
        author: maps[i]['author'],
        category: maps[i]['category'],
        price: maps[i]['price'],
      );
    });
  }
  // Future<void> updateBook(Book book) async {
  //   // Get a reference to the database.
  //   final db = await database;

  //   // Update the given Dog.
  //   await db.update(
  //     'books',
  //     book.toMap(),
  //     // Ensure that the Dog has a matching id.
  //     where: 'id = ?',
  //     // Pass the Dog's id as a whereArg to prevent SQL injection.
  //     whereArgs: [book.id],
  //   );
  // }

  // Future<void> deleteBook(int id) async {
  //   // Get a reference to the database.
  //   final db = await database;

  //   // Remove the Dog from the database.
  //   await db.delete(
  //     'books',
  //     // Use a `where` clause to delete a specific dog.
  //     where: 'id = ?',
  //     // Pass the Dog's id as a whereArg to prevent SQL injection.
  //     whereArgs: [id],
  //   );
  // }
}
