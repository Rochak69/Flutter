import 'package:books_management/database.dart';
import 'package:flutter/material.dart';
import 'database.dart';

class BookStore extends StatefulWidget {
  late final DB db;

  BookStore({Key? key}) : super(key: key) {
    db = DB();
  }

  @override
  State<BookStore> createState() => _BookStoreState();
}

class _BookStoreState extends State<BookStore> {
  Future<void> insertIntoDb() async {
    var book = Books(
        name: inputName.text,
        author: inputAuthor.text,
        category: inputCategory.text,
        price: inputPrice.text);

    await widget.db.insertBook(book);
  }

  final inputName = TextEditingController();

  final inputAuthor = TextEditingController();
  final inputCategory = TextEditingController();
  final inputPrice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Book Store'),
        ),
        body: Center(
            child: Column(children: [
          //Form
          Form(
              child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 16, right: 16, bottom: 10),
                child: TextFormField(
                  controller: inputName,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Book Name',
                      hintText: 'Enter the book\'s name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                child: TextFormField(
                  controller: inputAuthor,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Author'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                child: TextFormField(
                  controller: inputCategory,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Category'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                child: TextFormField(
                  controller: inputPrice,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Price'),
                ),
              ),
              ElevatedButton(
                  onPressed: insertIntoDb, child: const Text('Insert')),
            ],
          ))
        ])));
  }
}
