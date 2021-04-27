import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'qText': 'what is your favourite Profession',
      'answers': [
        {'text': 'Doctor', 'score': 100},
        {'text': 'Engineer', 'score': 50},
        {'text': 'Teacher', 'score': 0},
      ]
    },
    {
      'qText': 'what is your favourite food',
      'answers': [
        {'text': 'rice', 'score': 100},
        {'text': 'burger', 'score': 50},
        {'text': 'Anything than solves hunger', 'score': 150},
        {'text': 'chiks', 'score': 50},
      ]
    },
    {
      'qText': 'what is your favourite animal',
      'answers': [
        {'text': 'Snake', 'score': 100},
        {'text': 'Cow', 'score': 59},
        {'text': 'Cat', 'score': 69},
      ]
    },
  ];
  var _qIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _qIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    void _answerQuestions(int score) {
      _totalScore += score;
      //print(qIndex);
      setState(() {
        _qIndex++;
      });
      if (_qIndex < _questions.length) {
        print('we have more questions');
      } else {
        print('No more Questions');
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _qIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questions: _questions,
                qIndex: _qIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
