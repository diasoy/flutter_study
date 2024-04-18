import 'package:flutter/material.dart';
import 'package:flutter_study/post_result_models.dart';
import 'package:flutter_study/user_model.dart';

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
  User? user;

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
                  Text((user != null)
                      ? "${user!.id} | ${user!.name}"
                      : 'Belum ada data'),
                  ElevatedButton(
                    onPressed: () {
                        User.connectToAPI("10")
                            .then((value) {
                          setState(() {
                            user = value;
                          });
                        });
                    },
                    child: const Text('Send GET Request'),
                  ),
                ],
              )),
        ));
  }
}