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
  String output = "no data";

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
                  Text(output),
                  ElevatedButton(
                    onPressed: () {
                        User.getUsers("2").then((users) {
                          output = "";
                          for (int i = 0; i < users.length; i++) {
                            output = "$output[${users[i].id}] ${users[i].name}\n";
                          }
                          setState(() {});
                        });
                    },
                    child: const Text('Send GET Request'),
                  ),
                ],
              )),
        ));
  }
}