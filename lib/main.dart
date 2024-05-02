import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

void playSound(int a) {
  final player = AudioPlayer();
  player.play(AssetSource('note$a.wav'));
}

Expanded BuildWidget(backgorundColor, SoundNumber) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
          backgroundColor: backgorundColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero))),
      onPressed: () {
        playSound(SoundNumber);
      },
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildWidget(Colors.red, 1),
                BuildWidget(Colors.orange, 2),
                BuildWidget(Colors.yellow, 3),
                BuildWidget(Colors.green, 4),
                BuildWidget(Colors.blue, 5),
                BuildWidget(Colors.blue.shade800, 6),
                BuildWidget(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
