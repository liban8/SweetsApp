import 'package:flutter/material.dart';
// import './HomeScreen.dart';

class firstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'images/splash1.png',
                      height: 300,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Home of sweets",
                    style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do ",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 151, 150, 150)),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, "homeScreen");
                      },
                      child: Ink(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 15),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 80, 1, 40),
                            borderRadius: BorderRadius.circular(44)),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(fontSize: 27, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
