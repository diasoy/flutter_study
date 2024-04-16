// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text(
          'AppBar Example',
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          buildCard(Icons.account_box, 'Account Box1', Colors.white),
          buildCard(Icons.account_box, 'Account Box2', Colors.green),
          buildCard(Icons.account_box, 'Account Box3', Colors.black),
          buildCard(Icons.account_box, 'Account Box4', Colors.blue),
          buildCard(Icons.account_box, 'Account Box5', Colors.red),
        ]),
      ),
    ));
  }

  Card buildCard(IconData iconData, String text, Color color) {
    return Card(
        elevation: 5,
        child: Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(5), child: Icon(iconData, color: color)),
            Text(text),
          ],
        ));
  }
}
