import 'package:flutter/material.dart';
import './firstScreen.dart';
import './cake.dart';
import './sweets.dart';
import './juice.dart';
import './iceCream.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 44.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Home of Sweets",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Halkaani waa home of sweets waana ",
              style: TextStyle(fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset('images/cake.png',
                        height: 100, fit: BoxFit.cover),
                    const Text(
                      "Cake",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "cake");
                      },
                      child: Ink(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 211, 223),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Text(
                          "view",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset('images/ice-cream.png',
                        height: 100, fit: BoxFit.cover),
                    const Text(
                      "Ice Cream",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "iceCream");
                      },
                      child: Ink(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 211, 223),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Text(
                          "view",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset('images/orange-juice.png',
                        height: 60, fit: BoxFit.cover),
                    const Text(
                      "Juice",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "juice");
                      },
                      child: Ink(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 211, 223),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Text(
                          "view",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Image.asset('images/sweets.png',
                        height: 60, fit: BoxFit.cover),
                    const Text(
                      "Sweets",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "sweets");
                      },
                      child: Ink(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 235, 211, 223),
                            borderRadius: BorderRadius.circular(4)),
                        child: const Text(
                          "view",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
