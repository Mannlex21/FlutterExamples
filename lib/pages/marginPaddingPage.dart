import 'package:flutter/material.dart';

class MarginPaddingExample extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.orange,
            margin: EdgeInsets.all(10), //agrega columna a todos los lados, se usa el only para especificar ciertos lados
            padding: EdgeInsets.all(10),
            child: Text(
              "-----",
              style: TextStyle(fontSize: 60, color: Colors.green, backgroundColor: Colors.black),
            ),
          ),
          Text("Hola"),
          SizedBox(
            height: 20,
          ), //Agrega espacios entre 2 widgets
          Text("Bienvenidos"),
        ],
      ),
    );
  }
}
