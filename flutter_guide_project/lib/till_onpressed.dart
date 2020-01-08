// final : run time constant
// const : compile time constant


// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   void ansques(){
//     print('Answer choosen -> ');
//   }


//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text('Tirth Hihoriya'),
//           ),
//           body: Column(
//             children: <Widget>[
//               Text('The Question'),
//               RaisedButton(child: Text('Answer 1'), onPressed: ansques),   // name(pointer) instead of result
//               RaisedButton(child: Text('Answer 2'), onPressed: ansques),
//               RaisedButton(child: Text('Answer 3'), onPressed: () => print('2nd method')),  // semicolon after print is optional
//               RaisedButton(child: Text('Answer 4'), onPressed: () { print('3rd method'); }),
//             ],
//           )),
//     );
//   }
// }


//********************* till 42-lec (before ans.dart) ********************* */

// import 'package:flutter/material.dart';
// import './ques.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   var _quesindex = 0;
//   void _ansques() {
//     setState(() {
//       _quesindex = _quesindex + 1;
//     });
//     print(_quesindex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var ques = [
//       'What\'s your favorite color?',
//       'What\'s your favorite animal?',
//     ];
//     return MaterialApp( 
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text('Tirth Hihoriya'),
//           ),
//           body: Column(
//             children: <Widget>[
//               Question(ques[_quesindex]),
//               RaisedButton(
//                   child: Text('Answer 1'),
//                   onPressed: _ansques), // name(pointer) instead of result
//               RaisedButton(child: Text('Answer 2'), onPressed: _ansques),
//               RaisedButton(
//                   child: Text('Answer 3'),
//                   onPressed: _ansques), // semicolon after print is optional
//               RaisedButton(
//                   child: Text('Answer 4'),
//                   onPressed: () {
//                     print('3rd method');
//                   }),
//             ],
//           )),
//     );
//   }
// }
