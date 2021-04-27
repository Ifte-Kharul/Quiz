import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String qtext;
  Questions(this.qtext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(
        qtext,
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
