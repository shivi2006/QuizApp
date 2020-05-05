import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {

  @override

  var question_index = 0;

  var questions = [
    {
      'questionText': "What is my favourite colour?",
      'answers': [
        {'text': 'Grey', 'score': '10'},
        {'text': 'Purple', 'score': '15'},
        {'text': 'Pink', 'score': '5'},
        {'text': 'Black', 'score': '20'}
      ]
    },
    {
      'questionText': "What is my favourite destination?",
      'answers': [
        {'text': 'Dubai', 'score': '20'},
        {'text': 'Kashmir', 'score': '15'},
        {'text': 'Bali', 'score': '10'},
        {'text': 'Goa', 'score': '5'}
      ]
    },
    {
      'questionText': "What is my favourite subject?",
      'answers': [
        {'text': 'Science', 'score': '15'},
        {'text': 'History', 'score': '10'},
        {'text': 'Arts', 'score': '5'},
        {'text': 'Music', 'score': '20'}
      ]
    },
  ];

  var total_score = 0;

  void ifAnswered(int score){

  total_score= total_score+score;
  setState(() {

    question_index+=1;

  });

  if(question_index<questions.length)
    print("More Quesstions are there");
  else
    print("Quiz Over, Click on Reset to reset the quiz");

  }


  void reset_quiz() {
    setState(() {
      question_index = 0;
      total_score = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                  "Welcome to the Quiz App"
              ),
            ),
            body: question_index < questions.length ?
            Quiz(
                questionIndex: question_index,
                questions:questions,
                ifAnswered:ifAnswered,
            )
                : Result(total_score, reset_quiz)

        )
    );
  }
}

          /*Column( //Question appears according to question index
            children: <Widget>[
              Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                    questionText,
                    style: TextStyle(fontSize: 28),
                    textAlign: TextAlign.center,
                  )
              ),
              Container( //
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(answerText,),
                  onPressed: selectHandler,
                ),
              )
            ],

          ),
        }:
            Result(int score, reset_quiz)

        ),*/


