import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

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

  Expanded buildKey(Color colors, int soundNumber) {
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
    );
  }
}
