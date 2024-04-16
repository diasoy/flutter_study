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
                  decoration: InputDecoration(
                    fillColor: Colors.indigo[100],
                    filled: true,
                    // prefix: Container(
                    //   padding: EdgeInsets.all(10),
                    //   child: Text('Prefix'),
                    // ),
                    suffix: Container(
                      width: 5,
                      height: 5,
                      color: Colors.red,
                    ),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                    icon: Icon(Icons.lock),
                    prefixIcon: Icon(Icons.lock),
                    prefixText: "Password: ",
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
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
