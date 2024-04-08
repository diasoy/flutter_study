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
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.red,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.green,
                            )),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.blue,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.yellow,
                            )),
                      ],
                    ))
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        'Ini adalah text yang ada di dalam stack',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        'Ini adalah text yang ada di dalam stack',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        'Ini adalah text yang ada di dalam stack',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        'Ini adalah text yang ada di dalam stack',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        'Ini adalah text yang ada di dalam stack',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        'Ini adalah text yang ada di dalam stack',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        'Ini adalah text yang ada di dalam stack',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        'Ini adalah text yang ada di dalam stack',
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Align(
                alignment: Alignment(0, 0.95),
                child:
                    ElevatedButton(child: Text("My Button"), onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
