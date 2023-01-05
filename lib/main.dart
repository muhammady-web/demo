import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    // 'What\'s your favourite color?',
    // 'What\'s your favourite animal?',

    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabit', 'score': 7},
        {'text': 'Snake', 'score': 10},
        {'text': 'Lion', 'score': 6},
        {'text': 'Cat', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favourite car?',
      'answers': [
        {'text': 'Gentra', 'score': 10},
        {'text': 'Supra', 'score': 3},
        {'text': 'GTR34', 'score': 3},
        {'text': 'Taycan', 'score': 2},
      ],
    },
  ];

  var _questionIndex = 0;
  // var _totalScore = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;

    // _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
