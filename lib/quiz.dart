import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int)? answerQuestion;

  const Quiz(
      {Key? key,
      required this.question,
      required this.questionIndex,
      required this.answerQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: question[questionIndex]['questionText'] as String,
        ),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((q) {
          return Answer(
            selectHandler: () => answerQuestion!(q['score'] as int),
            questionAnswer: q['text'] as String,
          );
        })
      ],
    );
  }
}
