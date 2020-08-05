import 'package:flutter/material.dart';
import './quiz.dart';
import './alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _questions = [
    {
      'question': 'What is your favorite color?',
      'answers': [
        {'text':'red', 'score': 1},
        {'text':'blue', 'score': 2},
        {'text':'green', 'score': 3},
      ],
    },
    {
      'question': 'What is your favorite flower?',
      'answers': [
        {'text':'rose', 'score': 1},
        {'text':'sunflower', 'score': 2},
        {'text':'jasmine', 'score': 3},
      ],
    },
    {
      'question': 'What is your favorite fruit?',
      'answers': [
        {'text':'apple', 'score': 1},
        {'text':'orange', 'score': 2},
        {'text':'banana', 'score': 3},
      ],
    }
  ];

  void _resetQuiz() {
    _totalScore = 0;
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
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
            : Alert(_totalScore, _resetQuiz),
      ),
    );
  }
}
