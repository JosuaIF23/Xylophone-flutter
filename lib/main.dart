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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(1);
                  },
                  child: Container(color: Colors.red),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(2);
                  },
                  child: Container(color: Colors.orange),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(3);
                  },
                  child: Container(color: Colors.yellow),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(4);
                  },
                  child: Container(color: Colors.green),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(5);
                  },
                  child: Container(color: Colors.teal),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(6);
                  },
                  child: Container(color: Colors.blue),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () async {
                    playSound(7);
                  },
                  child: Container(color: Colors.purple),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
