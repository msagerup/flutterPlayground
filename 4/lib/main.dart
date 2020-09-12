import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Widget renderButtons () {
    int amount = 5;
    for(var i = 0; i < amount; i++) {
      return Text('hello $i');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              RenderButtons()
            ],
          )
        ),
      ),
    );
  }
}
