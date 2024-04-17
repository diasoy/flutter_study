// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        body: Stack(
          children: [
            Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            Positioned(
              left: -getSmallDiameter(context) / 4,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                child: Center(
                  child: Text("dribblee",
                      style: TextStyle(
                          fontFamily: "Pacifico",
                          fontSize: 30,
                          color: Colors.white)),
                ),
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
            Positioned(
              right: -getBigDiameter(context) / 2,
              bottom: -getBigDiameter(context) / 2,
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFF3E9EE)),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      margin: EdgeInsets.fromLTRB(20, 400, 20, 10),
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.email),
                                iconColor: Colors.pinkAccent,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFFF4891))),
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.black)),
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                iconColor: Colors.pinkAccent,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFFFF4891))),
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        child: Text(
                          "Forgot Password?",
                          style:
                              TextStyle(color: Colors.pinkAccent, fontSize: 14),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: 40,
                            child: Container(
                              child: Material(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(20),
                                  splashColor: Colors.pinkAccent,
                                  onTap: () {},
                                  child: Center(
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFB226B2),
                                        Color(0xFFFF6DA7)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter)),
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            mini: true,
                            elevation: 0,
                            child: Image(
                              image: AssetImage("assets/facebook.png"),
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            mini: true,
                            elevation: 0,
                            child: Image(
                              image: AssetImage("assets/google.png"),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
