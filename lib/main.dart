import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
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
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var letDiceNumber = 6;
  var rightDiceNumber = 6;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
                child: InkWell(
                  child: Image.asset('images/dice$letDiceNumber.png'),
                  onTap: () {
                    setState(() {
                      ranDom();
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 16, 16, 16),
                child: InkWell(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onTap: () {
                    ranDom();
                    setState(() {});
                  },
                ),
              ),
            ),
          ],
        ),
        Text(
          '${letDiceNumber + rightDiceNumber}',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
      ],
    );
  }

  void ranDom() {
    letDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
}
