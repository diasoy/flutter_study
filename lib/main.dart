import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isOn = false;

  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.blue,
      border: Border.all(color: Colors.black, width: 2),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Switch & AnimatedSwitcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: myWidget,
            ),
            Text(
              isOn ? 'Switch is Red' : 'Switch is Blue',
              style: const TextStyle(fontSize: 20),
            ),
            Switch(
              activeColor: Colors.red,
              activeTrackColor: Colors.red[200],
              inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.blue[200],
              value: isOn,
              onChanged: (value) {
                setState(() {
                  isOn = value;
                  if (isOn) {
                    myWidget = Container(
                      key: const ValueKey(1),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                    );
                  } else {
                    myWidget = Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                    );
                  }
                });
              },
            )
          ],
        ),
      ),
    ));
  }
}
