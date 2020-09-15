import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  // Widget renderButtons () {
  //   int amount = 5;
  //   for(var i = 0; i < amount; i++) {
  //     return Text('hello $i');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    List colorBars = [Colors.orange, Colors.yellow, Colors.green, Colors.teal, Colors.red, Colors.blue, Colors.purple];
    var player = AudioCache();
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(colorBars.length, (i) {
                var notes = i +1;
                return Expanded(
                  child: Container(
                    color: colorBars[i],
                    child: FlatButton(
                      onPressed: () {
                        player.play('note$notes.wav');
                      },
                    )
                  ),
                );
              }),
          )
        ),
      ),
    );
  }
}
