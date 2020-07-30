import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({ Key key }) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answer() {
    // print('Answer 1 for the question is provided!');
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'what is your favorite flower?',
      'what is your favorite fruit?',
      'All questions are answered successfully!',
    ];
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answer,),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answer,),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answer,),
          ],)
        )
      ),
    );
  }
}
