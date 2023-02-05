import 'package:flutter/material.dart';
import './sweetslist.dart';
import './HomeScreen.dart';

class sweets extends StatelessWidget {
  const sweets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 27, 20, 0),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              })),
            ),
            title: Text(
              "Sweets list",
              style: TextStyle(fontSize: 33),
            ),
          ),
          body: ListView.builder(
              itemCount: sweetslist.length,
              itemBuilder: ((context, index) {
                // ignore: prefer_const_constructors
                return Card(
                  elevation: 2,
                  // ignore: prefer_const_constructors
                  child: ListTile(
                    title: Text(
                      sweetslist[index],
                      style: TextStyle(fontSize: 23),
                    ),
                    leading: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 92, 68, 3),
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    trailing: const Icon(
                      Icons.shopping_cart,
                      size: 30,
                      color: Color.fromARGB(255, 92, 68, 3),
                    ),
                  ),
                );
              }))),
    );
  }
}
