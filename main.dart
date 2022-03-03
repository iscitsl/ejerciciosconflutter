import 'package:flutter/material.dart';
import 'package:drawer/fotos.dart';

void main() {
  runApp(MaterialApp(
    title: "Mi primer Drawer",
    home: MyDrawer(),
  ));
}

class MyDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyDrawerState();
  }
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.green,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 85,
                    height: 100,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/60064591?s=400&v=4"))),
                  ),
                  const Text(
                    "Alumno ISC",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            const ListTile(
              title: Text(
                "Inicio",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.home),
              onTap: null,
            ),
            ListTile(
              title: const Text(
                "Fotos",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.camera),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Fotos()));
              },
            ),
            const ListTile(
              title: Text(
                "Salir",
                style: TextStyle(fontSize: 20),
              ),
              leading: Icon(Icons.logout),
            )
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Pantalla inicial",
          style: TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
