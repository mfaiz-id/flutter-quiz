import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int nilai;
  final Function resetQuiz;
  const Result({Key? key, required this.nilai, required this.resetQuiz})
      : super(key: key);

  String get resultPhrase {
    return 'Nilai kamu adalah : $nilai';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: const TextStyle(fontSize: 30),
            ),
            TextButton(
                onPressed: () => resetQuiz(), child: Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
