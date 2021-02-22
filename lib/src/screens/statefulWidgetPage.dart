import 'package:flutter/material.dart';

class StatefulWidgetExample extends StatefulWidget {
  StatefulWidgetExample({Key key}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<StatefulWidgetExample> {
  String name = "Marvin";
  double progressValue = 0.0;
  bool switchValue = false;

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ListItemExample(),
            ListItemExample(),
            ListItemExample(),
            Text(
              this.name,
              style: TextStyle(fontSize: 30),
            ),
            LinearProgressIndicator(
              value: progressValue,
            ),
            Switch(
              value: switchValue,
              onChanged: (value) {
                switchValue = value;
              },
            ),
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
      floatingActionButton: FloatingActionButton(
        onPressed: changeName,
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

class ListItemExample extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return GestureDetector(
      onTap: _onTap,
      onLongPress: _onLongPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(Icons.folder),
            SizedBox(
              width: 20,
            ),
            Text("Mis videos"),
          ],
        ),
      ),
    );
  }

  void _onTap() {
    print("hola");
  }

  void _onLongPress() {
    print("long press");
  }
}
