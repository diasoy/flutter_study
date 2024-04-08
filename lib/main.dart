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
          child: Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(3),
            child: const Image(
              image: NetworkImage(
                  './assets/images/logoflutter.png'), // URL gambar yang valid
            ),
          ),
        ),
      ),
    );
  }
}
