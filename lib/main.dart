import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
              ? Column(
                  children: <Widget>[
                    Question(_questions.elementAt(_questionIndex)['question']),
                    ...(_questions.elementAt(_questionIndex)['answers']
                            as List<String>)
                        .map((answer) {
                      return Answer(_answer, answer);
                    }).toList(),
                  ],
                )
              : Center(
                  child: Text('You are Done!'),
                )),
    );
  }
}
