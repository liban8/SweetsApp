import 'package:flutter/material.dart';
import 'package:lesson0/pages/iceCream.dart';
import 'package:lesson0/pages/juice.dart';
import 'package:lesson0/pages/HomeScreen.dart';
import 'package:lesson0/pages/cake.dart';
import 'package:lesson0/pages/firstScreen.dart';
import 'package:lesson0/pages/products.dart';
import 'package:lesson0/pages/sweets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => firstScreen(),
        "homeScreen": (context) => HomeScreen(),
        "firstScreen": (context) => firstScreen(),
        "cake": (context) => cake(),
        "sweets": (context) => sweets(),
        "juice" :((context) => juice()),
        "iceCream":(context) => iceCream(),
        "products": (context) => products(),
      },
    );
  }
}
