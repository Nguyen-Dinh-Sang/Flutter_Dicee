import 'package:flutter/material.dart';

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
  var letDiceNumber = 4;
  var rightDiceNumber = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
              child: InkWell(
                child: Image.asset('images/dice$letDiceNumber.png'),
                onTap: () {
                  setState(() {
                    letDiceNumber = 1;
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
                  print('right tap');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}