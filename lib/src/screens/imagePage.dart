import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Uso de image"),
      ),
      body: Center(
        child: Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif",
          height: 300,
          width: 300,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
