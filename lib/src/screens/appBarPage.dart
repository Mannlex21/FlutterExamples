import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de AppBar"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _add,
          ),
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: _add,
          )
        ],
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: _add,
        // ),
      ),
      body: Center(),
    );
  }

  void _add() {
    print("asdas");
  }
}
