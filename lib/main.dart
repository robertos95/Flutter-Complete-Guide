import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp()); // run app call build method inside the instantiated class
// }

// one line function sample
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    }); 
    print(_questionIndex);
  }

  @override // << this is called a decorator (make the code more readable)
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app!'),
          ),
          body: Column(
            children: <Widget>[
              Text(questions[_questionIndex]),
              RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 chosen!!'),
              ),
              RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  // ...
                  print('Answer 3 chosen');
                },
              ),
            ],
          )),
    );
  }
}
