import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                onPressed: () {
                  _playSound(1);
                },
                child: null,
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  _playSound(2);
                },
                child: null,
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  _playSound(3);
                },
                child: null,
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  _playSound(4);
                },
                child: null,
                color: Colors.lightGreen,
              ),
              FlatButton(
                onPressed: () {
                  _playSound(5);
                },
                child: null,
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  _playSound(6);
                },
                child: null,
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () {
                  _playSound(7);
                },
                child: null,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
}
