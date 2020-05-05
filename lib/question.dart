import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget{

  var questionText;

  Question(this.questionText);

  @override
  Widget build( BuildContext context){
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}