// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_study/application_color.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider<ApplicationColor>(
      create: (context) => ApplicationColor(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => Text(
                      'Provider State Management',
                      style: TextStyle(color: applicationColor.color),
                    )),
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) =>
                        AnimatedContainer(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      color: applicationColor.color,
                      duration: Duration(seconds: 1),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(child: Text('AB')),
                      Consumer<ApplicationColor>(
                        builder: (context, applicationColor, _) => Switch(
                          value: applicationColor.isLightBlue,
                          onChanged: (value) {
                            applicationColor.isLightBlue = value;
                          },
                        ),
                      ),
                      Container(child: Text('CD')),
                    ],
                  )
                ]),
          )),
    ));
  }
}
