import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de scaffold"),
      ),
      body: Center(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print("hola");
        },
      ),
      // drawer: Drawer(
      //   child: Column(
      //     children: [Text("hola")],
      //   ),
      // ),
      endDrawer: Drawer(),
      backgroundColor: Colors.amber,
    );
  }
}
