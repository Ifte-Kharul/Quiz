import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function handler;
  Result(this.resultScore, this.handler);
  String get resulPhrase {
    var resultText = 'You did it';
    if (resultScore < 100) {
      resultText = 'You Noob';
    } else if (resultScore < 120) {
      resultText = 'Good!';
    } else if (resultScore < 200) {
      resultText = 'WOW! Boss';
    } else if (resultScore < 250) {
      resultText = 'Marry me';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resulPhrase,
            style: TextStyle(
              color: Colors.black,
              fontSize: 39,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.yellow,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: handler,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
