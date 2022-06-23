import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}
class MyAppState extends State<MyApp>{
  var questionIndex= 0;

  void answerQuestion(){
    setState((){
      questionIndex= questionIndex +1;
    });

    print("answer 1");
    print(questionIndex);
  }
  void answerQuestion1(){
    print("answer 2");
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["What\'s your favrite color?", "What\'s your favorite animal"];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("Initial App")),
      body: Column(
        children: [
          Text(questions.elementAt(questionIndex)),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer2"),
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
