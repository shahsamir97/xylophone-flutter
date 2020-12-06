import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            buildButton(Colors.red, 1),
            buildButton(Colors.orange, 2),
            buildButton(Colors.green, 3),
            buildButton(Colors.yellow, 4),
            buildButton(Colors.blue, 5),
            buildButton(Colors.teal, 6),
            buildButton(Colors.purpleAccent, 7),
          ],
        ),
      ),
    ));
  }

  Widget buildButton(Color buttonColor, int soundNumber) {
    return Expanded(
      child: Container(
        color: buttonColor,
        child: TextButton(
          onPressed: () {
            playmusics(soundNumber);
          },
        ),
      ),
    );
  }

  void playmusics(int music) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$music.wav');
  }
}
