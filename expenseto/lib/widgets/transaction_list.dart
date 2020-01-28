import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Dateformat
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      child: ListView.builder(     // we use it when items are more in list (more efficient than `Listview`)
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blueGrey[800],
            child: Container(
              //color: Colors.purple,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 110,
                    margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Theme.of(context).primaryColor,     //color: Color(0xffaaff00),
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '₹ ${transactions[index].amount.toStringAsFixed(2)}', // '₹ ' + tx.amount
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context).primaryColor,
                          ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transactions[index].title,
                        // style: TextStyle(
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 20,
                        //     color: Colors.cyan[600]),
                      ),
                      Text(
                        DateFormat.yMMMEd().format(transactions[index]
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
        },
        itemCount: transactions.length,
      ),
    );
  }
}
