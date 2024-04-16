// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Widget',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('TextField Widget'),
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextField(
                  maxLength: 10,
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller,
                ),
                Text(controller.text)
              ],
            ),
          )),
    );
  }
}
