import 'package:flutter/material.dart';
import 'package:flutter_study/post_result_models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('API Demo'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text((postResult != null)
              ? "${postResult!.id} | ${postResult!.name} | ${postResult!.job} | ${postResult!.created}"
              : 'Belum ada data'),
          ElevatedButton(
            onPressed: () {
              PostResult.connectToAPI("Fajar", "Dokter").then((value) {
                postResult = value;
                setState(() {});
              });
            },
            child: Text('Send POST Request'),
          ),
        ],
      )),
    ));
  }
}
