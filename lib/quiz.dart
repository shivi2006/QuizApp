import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget{
  List<Map<String, Object>> questions;
  var questionIndex;
  Function ifAnswered;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.ifAnswered
  });

    @override
    Widget build(BuildContext context){
      return Column(
        children: [
          Question(
            questions[questionIndex]['questionText'],
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
            return Answer(ifAnswered(answer['score']),answer['text']);
          }).toList()
        ],
  );
    }
}