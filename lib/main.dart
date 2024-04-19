// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: 'No Name');
  bool isOn = false;

  void saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', controller.text);
    prefs.setBool('isOn', isOn);
  }

  void loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      controller.text = prefs.getString('name') ?? 'No Name';
      isOn = prefs.getBool('isOn') ?? false;
    });
  }

  Future<String> getName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name') ?? 'No Name';
  }

  Future<bool> getIsOn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isOn') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Shared Preferences'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                controller: controller,
              ),
              Switch(
                value: isOn,
                onChanged: (value) {
                  setState(() {
                    isOn = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  saveData();
                },
                child: const Text('Save'),
              ),
              ElevatedButton(
                onPressed: () {
                  loadData();
                },
                child: const Text('Load'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
