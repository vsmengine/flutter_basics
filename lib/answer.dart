import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answerText),
        onPressed: answerHandler,
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
