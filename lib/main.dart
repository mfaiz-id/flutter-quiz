import 'package:flutter/material.dart';
import 'package:pertama/quiz.dart';

import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  var question = [
    {
      'questionText': 'Warna favorit kamu ...',
      'answers': [
        {'text': 'Merah', 'score': 25},
        {'text': 'Kuning', 'score': 0},
        {'text': 'Hijau', 'score': 0},
        {'text': 'Biru', 'score': 0},
      ]
    },
    {
      'questionText': 'Hewan kesukaan kamu ...',
      'answers': [
        {'text': 'Kucing', 'score': 25},
        {'text': 'Anjing', 'score': 0},
        {'text': 'Babi', 'score': 0},
        {'text': 'Kuda', 'score': 0},
      ]
    },
    {
      'questionText': 'Tempat belajar Fav ...',
      'answers': [
        {'text': 'Udemy', 'score': 0},
        {'text': 'Sekolah Koding', 'score': 0},
        {'text': 'BWA', 'score': 0},
        {'text': 'Milenial Digital', 'score': 25},
      ]
    },
    {
      'questionText': 'Tempat kelahiran Fav ...',
      'answers': [
        {'text': 'Bojonegoro', 'score': 0},
        {'text': 'Surabaya', 'score': 0},
        {'text': 'Jakarta', 'score': 0},
        {'text': 'Swiss', 'score': 25},
      ]
    }
  ];
  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
  }

  void _resetQuestion() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dartku'),
        ),
        body: _questionIndex < question.length
            ? Quiz(
                questionIndex: _questionIndex,
                question: question,
                answerQuestion: _answerQuestion,
              )
            : Result(
                nilai: _totalScore,
                resetQuiz: _resetQuestion,
              ),
      ),
    );
  }
}
