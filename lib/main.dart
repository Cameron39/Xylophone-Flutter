import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNum}) {
    final myPlayer = AudioCache();
    myPlayer.play('note$soundNum.wav');
  }

  Expanded colorBtn({Color theColor, int theSound}) {
    return Expanded(
      child: FlatButton(
          color: theColor,
          onPressed: () {
            playSound(soundNum: theSound);
          },
          child: Text('Note 1')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              colorBtn(theColor: Colors.red, theSound: 1),
              colorBtn(theColor: Colors.orange, theSound: 2),
              colorBtn(theColor: Colors.yellow, theSound: 3),
              colorBtn(theColor: Colors.green, theSound: 4),
              colorBtn(theColor: Colors.teal, theSound: 5),
              colorBtn(theColor: Colors.blue, theSound: 6),
              colorBtn(theColor: Colors.purple, theSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
