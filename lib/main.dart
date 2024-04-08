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
        appBar: AppBar(
          title: const Text('Stack Align Widget'),
        ),
        body: Center(
            child: Row(
          children: <Widget>[
            Spacer(flex: 5),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
            Spacer(flex: 5),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            )
          ],
        )),
      ),
    );
  }
}
