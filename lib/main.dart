import 'package:shake/shake.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.blueGrey[800],
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
  int dice1number = 6, dice2number = 6;
  void roll() {
    setState(() {
      dice1number = Random().nextInt(6) + 1;
      dice2number = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$dice1number.png'),
              onPressed: () {
                roll();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$dice2number.png'),
              onPressed: () {
                roll();
              },
            ),
          ),
        ],
      ),
    );
  }
}
