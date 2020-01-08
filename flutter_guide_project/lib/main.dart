import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //  implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _ques = [
    // or use : final ques= [....]
    // MAP class
    {
      'quesText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 25},
        {'text': 'Blue', 'score': 5},
        {'text': 'Pink', 'score': 7},
        {'text': 'Orange', 'score': 15}
      ],
    },
    {
      'quesText': 'What\'s your favorite animal?',
      'answers': ['Lion', 'Deer', 'Zebra', 'Monkey'],
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Deer', 'score': 25},
        {'text': 'Zebra', 'score': 5},
        {'text': 'OrMonkeyange', 'score': 15}
      ],
    },
    {
      'quesText': 'Which IPL team do you follow?',
      'answers': ['MI', 'RCB', 'CSK', 'KKR'],
      'answers': [
        {'text': 'MI', 'score': 10},
        {'text': 'RCB', 'score': 25},
        {'text': 'CSK', 'score': 5},
        {'text': 'KKR', 'score': 15}
      ],
    },
  ];

  var _quesindex = 0;
  var _totalscore = 0;

  void _resetquiz(){
    setState(() {
    _quesindex = 0;
    _totalscore = 0;
      
    });
  }

  void _ansques(int score) {
    //var flag = true;
    // flag = false;

    _totalscore += score;

    if (_quesindex < _ques.length) {
      print('We have more questions..!!');
    } else
      print('No more ques....!!!1');

    setState(() {
      _quesindex = _quesindex + 1;
    });
    print(_quesindex);
  }

  @override
  Widget build(BuildContext context) {
    // ques = []  // is not allowed if ques is const i.e const ques = [...]
    // ques = []  // is allowed if ques is not const i.e ques = const [...]
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tirth Hihoriya'),
        ),
        body: _quesindex < _ques.length
            ? Quiz(
                ansques: _ansques,
                quesindex: _quesindex,
                ques: _ques,
              )
            : Result(_totalscore,_resetquiz),
      ),
    );
  }
}
