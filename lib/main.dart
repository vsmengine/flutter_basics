import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answer() {
    // print('Answer 1 for the question is provided!');
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Column(children: <Widget>[
          Question(questions.elementAt(_questionIndex)['question']),
          ...(questions.elementAt(_questionIndex)['answers'] as List<String>).map(
            (answer) {
              return Answer(_answer, answer);
            }
          ).toList(),
        ],)
      ),
    );
  }
}
