import 'package:flutter/material.dart';

class Fotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Una foto desde Internet"),
          backgroundColor: Colors.green,
        ),
        body: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars.githubusercontent.com/u/60064591?s=400&v=4"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Text('Alumno ISC', style: TextStyle(fontSize: 32))
              ],
            )
        )
    );
  }
}
