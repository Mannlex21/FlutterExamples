import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Uso de scaffold"),
        ),
        body: SizedBox(
          width: double.infinity, // Este atributo lo que hace es tomar el ancho de toda la pantalla
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.orange,
                height: 100,
                width: 100,
              ),
              Text("Hola"),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif",
                height: 100,
                width: 50,
              ),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif",
                height: 100,
              ),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif",
                height: 100,
              ),
              Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif",
                height: 100,
              ),
            ],
          ),
        ));
  }
}
