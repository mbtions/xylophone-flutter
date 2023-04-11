import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildKey({Color colorName, int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: colorName,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colorName: Colors.red, soundNumber: 1),
              buildKey(colorName: Colors.orange, soundNumber: 2),
              buildKey(colorName: Colors.yellow, soundNumber: 3),
              buildKey(colorName: Colors.green, soundNumber: 4),
              buildKey(colorName: Colors.blue.shade900, soundNumber: 5),
              buildKey(colorName: Colors.blue, soundNumber: 6),
              buildKey(colorName: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
