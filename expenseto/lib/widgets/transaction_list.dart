import 'package:flutter/material.dart';
import 'package:intl/intl.dart';  // Dateformat
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
 
   @override
  Widget build(BuildContext context) {
    return Column( 
              children: transactions.map((tx) {
                return Card(
                  color: Colors.black,
                  child: Container(
                    //color: Colors.purple,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                         
                          margin: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 20),
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