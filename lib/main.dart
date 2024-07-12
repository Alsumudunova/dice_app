import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 4;

  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Center(child: Text('Тапшырма 5')),
        backgroundColor: Colors.yellow,
        elevation: 0,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${leftDiceNumber + rightDiceNumber}',
              style: TextStyle(fontSize: 50),
            ),
            Expanded(
              child: InkWell(
                onTap: rollDice,
                child: Image.asset('assets/images/dice$leftDiceNumber.png'),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: InkWell(
                onTap: rollDice,
                child: Image.asset('assets/images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
