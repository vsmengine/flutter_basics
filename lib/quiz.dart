import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int quizIndex;
  final quizAnswer;
  final List<Map<String, Object>> quizQues;
  Quiz(this.quizIndex, this.quizAnswer, this.quizQues);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(quizQues.elementAt(quizIndex)['question']),
        ...(quizQues.elementAt(quizIndex)['answers']
                as List<String>)
            .map((answer) {
          return Answer(quizAnswer, answer);
        }).toList(),
      ],
    );
  }
}