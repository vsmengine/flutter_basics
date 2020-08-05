import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final int scoreOutput;
  final Function resetHandler;
  Alert(this.scoreOutput, this.resetHandler);

  String get completionMsg {
    String msgText;
    if (scoreOutput < 3) {
      msgText = 'You are failed!';
    } else if (scoreOutput < 6) {
      msgText = 'You are just passed!';
    } else {
      msgText = 'You are genius!';
    }
    return msgText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(completionMsg + '-' + scoreOutput.toString()),
        ),
        FlatButton(onPressed: resetHandler, child: Text('Reset Quiz!'))
      ],
    );
  }
}
