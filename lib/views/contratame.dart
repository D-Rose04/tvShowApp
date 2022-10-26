import 'package:flutter/material.dart';
import 'package:tarea5/menu.dart';

class Contratame extends StatelessWidget {
  const Contratame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: Menu(),
        appBar: AppBar(
          title: const Text("Contratame"),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(193, 54, 223, 220),
                Color.fromARGB(193, 36, 159, 157),
                Color.fromARGB(251, 3, 122, 118),
                Color.fromARGB(220, 219, 37, 116),
                Color.fromARGB(249, 237, 27, 118)
              ])),
          padding: const EdgeInsets.only(top: 40, bottom: 40),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: const CircleAvatar(
                          radius: 80,
                          backgroundImage:
                              AssetImage('assets/images/profile.jpeg')),
                    ),
                    const Text(
                      "David Benjamin",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Hernandez De la Rosa",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
}
