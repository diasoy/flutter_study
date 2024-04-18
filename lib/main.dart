// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((Duration duration) {
      setState(() {
        durasi = duration.toString().split('.').first;
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound() async {
    await audioPlayer.play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Audio Player')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  playSound();
                },
                child: Text('Play'),
              ),
              ElevatedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text('Pause'),
              ),
              ElevatedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text('Resume'),
              ),
              ElevatedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text('Stop'),
              ),
              Text(durasi, style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}