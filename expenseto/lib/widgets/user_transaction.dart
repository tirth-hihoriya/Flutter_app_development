import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Petrol',
      amount: 250.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Food',
      amount: 125.50,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String tx_title, double tx_amount) {
    final newTx = Transaction(title: tx_title, amount: tx_amount, date: DateTime.now(),
    id: DateTime.now().toString());

    setState(()
  {
    _userTransactions.add(newTx); 
  });
    
  }

  
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
