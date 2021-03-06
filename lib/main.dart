import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  void plaeSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color colorKey, soundNumber) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => plaeSound(soundNumber),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colorKey),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.orange, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.green, 4),
                buildKey(Colors.teal, 5),
                buildKey(Colors.blue, 6),
                buildKey(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
