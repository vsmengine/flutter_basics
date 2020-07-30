import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  void answer() {
    print('Answer 1 for the question is provided!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            Text('The Question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answer,),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 for the question is provided!'),),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {
                print('Answer 3 for the question is provided!')
              },),
          ],)
        )
      ),
    );
  }
}
