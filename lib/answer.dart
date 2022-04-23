import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String questionAnswer;

  const Answer(
      {Key? key, required this.selectHandler, required this.questionAnswer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(questionAnswer),
      ),
    );
  }
}
