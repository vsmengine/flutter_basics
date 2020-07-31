import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Text(
        questionText,
        style: TextStyle(
          fontFamily: 'Open Sans',
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      )
    );
  }
}
