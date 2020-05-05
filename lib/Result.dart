import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget{
  int score;
  Function reset_quiz;

  Result(this.score,this.reset_quiz);

  String get resultPhrase {
    String resultText;
    if (score >= 40) {
      resultText = 'You are awesome and innocent!';
    } else if (score>=30) {
      resultText = 'Pretty likeable!';
    } else if (score>=20) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context){
      return Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
            ),
          ),
          RaisedButton(
                child: Text(
                  'Play the quiz again!!',
                ),
            textColor: Colors.blue,
            onPressed: reset_quiz,
          )
        ],
      );

  }
}