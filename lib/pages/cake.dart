import 'package:flutter/material.dart';
import './cakelist.dart';
import 'HomeScreen.dart';

class cake extends StatelessWidget {
  const cake({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 27, 20, 0),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              })),
            ),
            title: Text(
              "Cake list",
              style: TextStyle(fontSize: 33),
            ),
          ),
          body: ListView.builder(
              itemCount: cakeLists.length,
              itemBuilder: ((context, index) {
                // ignore: prefer_const_constructors
                return Card(
                  elevation: 2,
                  // ignore: prefer_const_constructors
                  child: ListTile(
                    title: Text(
                      cakeLists[index],
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
