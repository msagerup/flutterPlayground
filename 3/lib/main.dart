import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('8 Ball'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Ball(),
          ),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int numb = 3;
  void randomNumb () {
    numb = Random().nextInt(5) + 1;
    print(numb);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  randomNumb();
                });

              },
              child: Image.asset('images/ball$numb.png')
            ),
          ),
        ],
      ),
    ));
  }
}
