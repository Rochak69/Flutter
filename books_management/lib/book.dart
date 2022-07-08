// import 'package:sqflite/sqflite.dart';
// import './main.dart';
//
//
// class Book {
//   final int bookId;
//   final String author;
//   final String category;
//   final int price;
//   final String name;
//
//   const Book({
//     required this.bookId,
//     required this.category,
//     required this.author,
//     required this.name,
//     required this.price,
//   });
//
//
//   Map<String, dynamic> toMap() {
//     return {
//       'bookId': bookId,
//       'name': name,
//       'price': price,
//       'author': author,
//       'category': category,
//     };
//   }
//   @override
//   String toString(){
//     return 'Book{bookID: $bookId, name: $name, price: $price, category: $category}';
//   }
//
//
//
//   // void main() async {
//   //
//   //   Future<void> insertBook(Book book) async{
//   //     final db= await database;
//   //     await db.insert(
//   //       'books',
//   //       book.toMap(),
//   //       conflictAlgorithm: ConflictAlgorithm.replace,
//   //     );
//   //   }
//   //   var harryPotter= Book(
//   //     bookId: 0,
//   //     name: 'Rochak',
//   //     price: 100,
//   //     category: 'fiction',
//   //     author: 'Codeware',
//   //   );
//   //   await insertBook(harryPotter);
//   // }
//
//
// }
