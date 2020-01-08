import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetHandeler;

  Result(this.resultscore, this.resetHandeler);

  String get resultPhrase {
    var resultText = 'You did it..!!!';
    if (resultscore >= 35) {
      resultText = ' You are AWESOME ..!!!';
    } else if (resultscore >= 20) {
      resultText = ' You are GREAT ..!!!';
    } else
      resultText = ' You are GOOD';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        
        Text(
           
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          onPressed: resetHandeler,
          color: Colors.green,
        )
      ],
    ));
  }
}
