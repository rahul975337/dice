import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.white54,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int sum = 0;
  int rightDice = 1;
  void changeFace() {
    setState(
      () {
        rightDice = Random().nextInt(6) + 1;
        leftDice = Random().nextInt(6) + 1;
        sum = leftDice + rightDice;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                onPressed: () {
                  changeFace();
                },
                child: Image.asset(
                  'images/dice$leftDice.png',
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                onPressed: () {
                  changeFace();
                },
                child: Image.asset(
                  'images/dice$rightDice.png',
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          Text(
            '$sum',
          )
        ],
      ),
    );
  }
}
