import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          verticalDirection: VerticalDirection.down,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.beach_access,
              size: 120,
              color: Colors.blue,
            ),
            IconButton(
              icon: Icon(
                Icons.beach_access,
                size: 120,
                color: Colors.blue,
              ),
              onPressed: () {
                print("hola");
              },
              iconSize: 120,
            ),
          ],
        ),
      ),
    );
  }
}
