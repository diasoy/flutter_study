// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_study/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                child: Text("Login"),
                onPressed: () => {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return MainPage();
                      }))
                    })));
  }
}