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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
              child: InkWell(
                child: Image.asset('images/dice1.png'),
                onTap: () {
                  print('left tap');
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(8, 16, 16, 16),
              child: InkWell(
                child: Image.asset('images/dice3.png'),
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
