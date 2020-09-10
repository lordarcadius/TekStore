import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var questionIndex = 0;
  void answerQuestions() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["What is my name?", "What is my favourite colour?"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print("Answer 2 Pressed!");
              },
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("Answer 3 Pressed!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
