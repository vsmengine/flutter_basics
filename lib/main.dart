import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
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
              onPressed: null,),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: null,),
          ],)
        )
      ),
    );
  }
}
