import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de row"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: Text("asd"),
                ),
                Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            Divider(
              color: Colors.red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("asd 2222"),
                Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.pink,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
