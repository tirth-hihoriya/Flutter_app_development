import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectOption;
  final String ansText;

  Answer(this.selectOption,this.ansText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton (
        
        color: Colors.orange,
        textColor: Colors.black,
        child: Text(ansText), onPressed: selectOption),
    );
  }
}
