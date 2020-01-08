import 'package:flutter/material.dart';

import 'ans.dart';
import 'ques.dart'; 

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> ques;
  final Function ansques;
  final int quesindex;

  Quiz({@required this.ques, @required this.ansques, @required this.quesindex});  // @required is decorator provided by material.dart

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Question(
                      ques[quesindex]['quesText'],
                    ),
                    ...(ques[quesindex]['answers'] as List<Map<String, Object>>)
                        .map((answer) {
                      return Answer(() => ansques(answer['score']), answer['text']);   // vimp concept (anonymous function)
                    }).toList()
                  ],
                );
  }
}