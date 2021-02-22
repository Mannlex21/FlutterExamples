import 'package:flutter/material.dart';
import 'package:myapp/src/screens/navigatorPageExample.dart';

class TypeFieldsExample extends StatefulWidget {
  @override
  _TypeFieldsExample createState() => _TypeFieldsExample();
}

class _TypeFieldsExample extends State<TypeFieldsExample> {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController lastNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de fields"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Nombre:"),
            controller: nameTextController,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Apellido:"),
            controller: lastNameTextController,
          ),
          RaisedButton(
            child: Text("Aceptar"),
            onPressed: () {
              submit(context);
            },
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void submit(BuildContext context) {
    Navigator.of(context)
        .pushNamed("/navigator", arguments: NavigatorSecondPageArguments(name: nameTextController.text, lastName: lastNameTextController.text));
  }
}
