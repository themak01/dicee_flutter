import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 3;
  void changeDiceFace() {
    setState(() {
       leftDiceNumber = Random().nextInt(6)+1;
       rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        changeDiceFace();
                      });
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png')
                ),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        changeDiceFace();
                      });
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png')
                ),
              )
          ),
        ],
      ),
    );
  }
  }


