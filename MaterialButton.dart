import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Ocultar el debug banner
      debugShowCheckedModeBanner: false,
      title: 'Ejercicios con flutter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color _bgColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialButton'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: 300,
            height: 300,
            color: _bgColor,
            child: Center(
              child: Text(
                '#LosIngesDelTEc',
                style: TextStyle(
                    fontSize: 30,
                    color: _bgColor.computeLuminance() > 0.5
                        ? Colors.black
                        : Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),

          //Funcionalidad para cambiar de color
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              MaterialButton(
                onPressed: () {
                  setState(() {
                    _bgColor = Colors.green;
                  });
                },
                color: Colors.green,
              ),

              MaterialButton(
                onPressed: () {
                  setState(() {
                    _bgColor = Colors.orange;
                  });
                },
                color: Colors.orange,
              ),

              MaterialButton(
                onPressed: () {
                  setState(() {
                    _bgColor = Colors.yellow;
                  });
                },
                color: Colors.yellow,
              ),

              MaterialButton(
                onPressed: () {
                  setState(() {
                    _bgColor = Colors.black;
                  });
                },
                color: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}
