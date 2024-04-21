// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_study/application_color.dart';
import 'package:provider/provider.dart';

import 'cart.dart';
import 'money.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Money()),
        ChangeNotifierProvider(create: (context) => Cart()),
      ],
      child: Scaffold(
        floatingActionButton: Consumer<Money>(
          builder: (context, money, _) => Consumer<Cart>(
            builder: (context, cart, _) => FloatingActionButton(
              onPressed: () {
                if (money.balance >= 500) {
                  cart.quantity += 1;
                  money.balance -= 500;
                }
              },
              child: Icon(Icons.add_shopping_cart),
              backgroundColor: Colors.purple,
            ),
          ),
          child: Consumer<Cart>(
            builder: (context, cart, _) => FloatingActionButton(
              onPressed: () {
                cart.quantity += 1;
                context.read<Money>().balance -= 500;
              },
              child: Icon(Icons.add_shopping_cart),
              backgroundColor: Colors.purple,
            ),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
              backgroundColor: Colors.purple,
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Multi Provider"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Balance'),
                  Container(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Consumer<Money>(
                        builder: (context, money, _) => Text(
                          money.balance.toString(),
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    height: 40,
                    width: 150,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        border: Border.all(color: Colors.blue, width: 2),
                        borderRadius: BorderRadius.circular(5)),
                  )
                ],
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Consumer<Cart>(
                    builder: (context, cart, _) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Apple (500) x " + cart.quantity.toString(),
                            style: TextStyle(color: Colors.black)),
                        Text((500 * cart.quantity).toString(),
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("10000", style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ),
                ),
                height: 40,
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2),
                    borderRadius: BorderRadius.circular(5)),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
