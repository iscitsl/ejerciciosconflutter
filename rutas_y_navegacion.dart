import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Rutas con Flutter',
    initialRoute: '/',
    routes: {
      '/': (context) => Paginaprincipal(),
      '/paginados': (context) => Paginados(),
      '/paginatres': (context) => Paginatres(),
    },
  ));
}

class Paginaprincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.green,
              child: const Text(
                'Rutas y Navegación',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              alignment: Alignment.center,
            ),
            Container(
                child: Icon(
              Icons.arrow_downward,
              size: 80,
            )),
            Container(
              child: ElevatedButton(
                child: const Text('Clic para mostrar pantalla 2'),
                onPressed: () {
                  Navigator.pushNamed(context, '/paginados');
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Clic para mostrar pantalla 3'),
                onPressed: () {
                  Navigator.pushNamed(context, '/paginatres');
                },
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.green),
            )
          ]),
    );
  }
}

class Paginados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pantalla 2"),
          backgroundColor: Colors.green,
        ),
        body: Column(children: <Widget>[
          Container(
            child: Text("Contenido de la pantalla 2"),
          ),
          Container(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('<< Regresar')),
          ),
        ]));
  }
}

class Paginatres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 3"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('<< Regresar'),
        ),
      ),
    );
  }
}
