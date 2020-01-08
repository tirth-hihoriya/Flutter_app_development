import 'package:expenseto/models/transaction.dart';
import 'package:expenseto/widgets/transaction_list.dart';
import 'package:flutter/material.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  // String titleInput;
  // String amountInput;

  final titlecontroller = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('Expenseto by Tirth Hihoriya'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Container(
            //   width: double.infinity,
            //   color: Colors.purple,
            //   child: Card(
            //     color: Colors.orange,
            //     child: Text('Tirth Hihoriya'),
            //     elevation: 7,
            //   ),
            //),
            Card(
              elevation: 7,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      autocorrect: true,
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: titlecontroller,
                      // onChanged: (val) {
                      //   titleInput = val;
                      // },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      controller: amountController,
                     // onChanged: (val) => amountInput = val,
                    ),
                    FlatButton(
                      child: Text('Add Transaction'),
                      onPressed: () {
                        print(titlecontroller.text);        // print(titleInput);
                        print(amountController.text);        // print(amountInput);
                      },
                      textColor: Colors.orangeAccent[400],
                    ),
                  ],
                ),
              ),
            ),
            TransactionList()
          ],
        ));
  }
}
