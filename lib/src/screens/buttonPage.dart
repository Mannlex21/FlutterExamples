import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  ButtonExample({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ButtonExample> {
  String name = "Marvin";
  double progressValue = 0.0;
  bool switchValue = false;

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de buttons"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text("RaisedButton"),
              onPressed: _onPressBtn1,
            ),
            FlatButton(
              child: Text("FlatButton"),
              onPressed: _onPressBtn1,
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: _onPressBtn1,
            ),
            OutlineButton(
              onPressed: _onPressBtn1,
              child: Text("OutlineButton"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
              borderSide: BorderSide(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }

  void changeName() {
    setState(() {
      if (name == "Marvin") {
        name = "jorge";
      } else {
        name = "Marvin";
      }

      progressValue += 0.01;
    });
  }

  void _onPressBtn1() {
    print("press btn1");
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
