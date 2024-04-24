// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_study/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.amber,
                  onPressed: () {
                    bloc.eventSink.add(ColorEvent.to_amber);
                  },
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  backgroundColor: Colors.lightBlue,
                  onPressed: () {
                    bloc.eventSink.add(ColorEvent.to_light_blue);
                  },
                ),
              ],
            ),
            appBar: AppBar(
              title: Text('BLoC tanpa Library'),
            ),
            body: Center(
                child: StreamBuilder(
              stream: bloc.stateStream,
              initialData: Colors.amber,
              builder: (context, snapshot) {
                return AnimatedContainer(
                  width: 100,
                  height: 100,
                  color: snapshot.data,
                  duration: Duration(milliseconds: 500),
                );
              },
            ))));
  }
}
