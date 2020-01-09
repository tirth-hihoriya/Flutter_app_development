
import 'package:flutter/material.dart';
import './widgets/user_transaction.dart';



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
          backgroundColor: Colors.green[900],
          title: Text('Expenseto by Tirth Hihoriya'),
        ),
        body:
        //  SingleChildScrollView(
        //           child: 
                  Column(
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
          UserTransactions(),
            ],
          ),
        );
       // );
  }
}
