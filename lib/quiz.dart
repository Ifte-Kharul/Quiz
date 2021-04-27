import 'package:flutter/material.dart';
import 'questions.dart';
import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qIndex;
  final Function answerQuestions;
  Quiz(
      {@required this.answerQuestions,
      @required this.qIndex,
      @required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[qIndex]['qText']),
        ...(questions[qIndex]['answers'] as List<Map<String, Object>>).map(
          (answer) {
            return Answer(
                () => answerQuestions(answer['score']), answer['text']);
          },
        ).toList(),
      ],
    );
  }
}
