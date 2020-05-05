import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  var select;
  var answerText;

    Answer(this.select, this.answerText);
    @override
    Widget build(BuildContext context){
      return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child:RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: select,
        ),
      );
}
}