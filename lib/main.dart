import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionno = 0;

  void questionanswer() {
    setState(() {
      _questionno++;
    });
    print('Answer chosen !');
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'what is your favorite color?',
      'what is your favorite animal?',
      'what is your favorite movie?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(question[_questionno]),
            RaisedButton(
              onPressed: questionanswer,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: questionanswer,
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: () {
                setState(
                  () {
                    _questionno = 0;
                  },
                );
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
