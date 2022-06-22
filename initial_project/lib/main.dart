import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion(){
    print("answer 1");
  }
  void answerQuestion1(){
    print("answer 2");
  }
 
  @override
  Widget build(BuildContext context) {
    var questions = ["wwww", "wwww"];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Initial App")),
      body: Column(
        children: [
          Text("The questions"),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion1,
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: ()=> print("Answer 3"),
          ),
        ],
      ),
    ));
  }
}
