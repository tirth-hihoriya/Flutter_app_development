import 'package:flutter/material.dart';
import 'package:intl/intl.dart';  // Dateformat
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
              children: _userTransactions.map((tx) {
                return Card(
                  color: Colors.black,
                  child: Container(
                    //color: Colors.purple,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.orange,
                            width: 2,
                          )),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '₹ ${tx.amount}', // '₹ ' + tx.amount
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.orange),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              tx.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.cyan[600]),
                            ),
                            Text(
                              DateFormat.yMMMEd().format(tx
                                  .date), // tx.date.toString() |  DateFormat('dd/MM/yyyy').format(tx.date)
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.blueGrey[300]),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            );
      
    
  }
}