import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) async {
    final player = AudioPlayer();

    await player.play(
      AssetSource('note$soundNumber.wav'),
      mode: PlayerMode.lowLatency,
    );
    print('it got Pressed');
  }

  Expanded buildKey({required Color colors, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          playSound(soundNumber);
        },
        child: Container(color: colors),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colors: Colors.red, soundNumber: 1),
              buildKey(colors: Colors.orange, soundNumber: 2),
              buildKey(colors: Colors.yellow, soundNumber: 3),
              buildKey(colors: Colors.green, soundNumber: 4),
              buildKey(colors: Colors.teal, soundNumber: 5),
              buildKey(colors: Colors.blue, soundNumber: 6),
              buildKey(colors: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
