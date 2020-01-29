import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _selectedDate;

  void _submitData() {
    if(_amountController.text.isEmpty){
      return;
    }
    final enterdTitle = _titleController.text;
    final enteredAmount = double.parse(_amountController.text);

    if (enteredAmount <= 0 || enterdTitle.isEmpty || _selectedDate == null) {
      return;
    }

    widget.addTx(enterdTitle, enteredAmount,_selectedDate); // print(amountInput);

    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime.now()
        ).then((pickedDate) {
          if(pickedDate==null)
          {
            return;
          }
          setState(()
          {
            _selectedDate=pickedDate;
          });
          
        });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              autocorrect: true,
              decoration: InputDecoration(labelText: 'Title'),
              controller: _titleController,
              onSubmitted: (_) => _submitData(),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: _amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) =>
                  _submitData(), // `_` indicated that i don't care of parameter
              // onChanged: (val) => amountInput = val,
            ),
            Container(
              height: 80,
              child: Row(
                children: <Widget>[
                  Text(_selectedDate==null? 'No Date Choosen': DateFormat.yMMMEd().format(_selectedDate)  ),
                  FlatButton(
                    textColor: Theme.of(context).errorColor,
                    child: Text(
                      'Choose Date' ,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: _presentDatePicker,
                  )
                ],
              ),
            ),
            RaisedButton(
              child: Text('Add Transaction'),
              
              onPressed: () {
                print(_titleController.text); // print(titleInput);
                print(_amountController.text);
                _submitData();
              },
              
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              padding: EdgeInsets.all(15),
            ),
          ],
        ),
      ),
    );
  }
}
