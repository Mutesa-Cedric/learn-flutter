import 'package:coffee_masters/pages/menupage.dart';
import 'package:coffee_masters/pages/offerspage.dart';
import 'package:coffee_masters/pages/orderspage.dart';
import 'package:flutter/material.dart';

import 'datamanager.dart';

void main() {
  runApp(const MyApp());
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("hello world");
  }
}

class Greet extends StatefulWidget {
  const Greet({Key? key}) : super(key: key);

  @override
  State<Greet> createState() => _GreetState();
}

class _GreetState extends State<Greet> {
  // state variable
  var name = "";
  var greetStyle = const TextStyle(fontSize: 32);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text(
                "hello $name",
                style: greetStyle,
              ),
              Text(
                "!!!",
                style: greetStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            decoration: const InputDecoration(
              labelText: "Enter your name",
            ),
            onChanged: (value) => setState(() {
              name = value;
            }),
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cofee masters',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedTab = 0;
  var dataManager = DataManager();
  @override
  Widget build(BuildContext context) {
    Widget selectedPage = const Text("Home page");
    switch (selectedTab) {
      case 0:
        selectedPage = MenuPage(
          dataManager: dataManager,
        );
        break;
      case 1:
        selectedPage = const OffersPage();
        break;
      case 2:
        selectedPage = OrdersPage(
          dataManager: dataManager,
        );
        break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/logo.png'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (newIndex) {
            setState(() {
              selectedTab = newIndex;
            });
          },
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.amber.shade500,
          unselectedItemColor: Colors.brown.shade50,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.coffee),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout_rounded),
              label: 'Order',
            ),
          ]),
      body: selectedPage,
    );
  }
}
