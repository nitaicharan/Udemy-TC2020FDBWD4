import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    );

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int number1 = 1;
  int number2 = 1;

  void changeDiceFace() {
    setState(() {
      number1 = Random().nextInt(6) + 1;
      number2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () => this.changeDiceFace(),
              child: Image.asset('images/dice$number1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () => this.changeDiceFace(),
              child: Image.asset('images/dice$number2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
