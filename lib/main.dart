import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questions = [
    {
      'question': 'What is your favorite color?',
      'answers': ['red', 'blue', 'green'],
    },
    {
      'question': 'What is your favorite flower?',
      'answers': ['rose', 'sunflower', 'jasmine'],
    },
    {
      'question': 'What is your favorite fruit?',
      'answers': ['apple', 'orange', 'banana'],
    }
  ];
  void _answer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print('You have more questions!');
    } else {
      print('You are done!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  quizIndex: _questionIndex,
                  quizAnswer: _answer,
                  quizQues: _questions)
              : Center(
                  child: Text('You are Done!'),
                )),
    );
  }
}
