import 'package:flutter/material.dart';
import 'package:myapp/src/screens/navigatorPageExample.dart';

class FocusNodeExample extends StatefulWidget {
  @override
  _FocusNodeExample createState() => _FocusNodeExample();
}

class _FocusNodeExample extends State<FocusNodeExample> {
  String nameValue;
  String lastNameValue;
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final lastNameController = TextEditingController();

  FocusNode nameFocus;
  FocusNode lastNameFocus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de focus node"),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Nombre:"),
              onSaved: (value) => nameValue = value,
              validator: (value) {
                if (value.isEmpty) {
                  return "Llene este campo";
                }

                return null;
              },
              focusNode: nameFocus, // Asi se agrega el focus node
              onEditingComplete: () => requestFocus(context, lastNameFocus), // Con esto pasa al siguiente elemento
              textInputAction: TextInputAction.next, // Con esto solo es para que el usuario vea el icono dependiendo de la accion, en este caso
              //  pasa al siguiente
            ),
            TextFormField(
              controller: lastNameController,
              decoration: InputDecoration(labelText: "Apellido:"),
              onSaved: (value) => lastNameValue = value,
              validator: (value) {
                if (value.isEmpty) {
                  return "Llene este campo";
                }

                return null;
              },
              focusNode: lastNameFocus,
              textInputAction: TextInputAction.done,
            ),
            RaisedButton(
              child: Text("Aceptar"),
              onPressed: () {
                submit(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  void dispose() {
    super.dispose();
    this.nameController.dispose();
    this.lastNameController.dispose();

    nameFocus.dispose(); // NOTA: siempre borrar variables en dispose para liberar memoria
    lastNameFocus.dispose();
  }

  @override
  void initState() {
    super.initState();
    nameFocus = FocusNode();
    lastNameFocus = FocusNode();
  }

  void submit(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.of(context).pushNamed("/navigator", arguments: NavigatorSecondPageArguments(name: this.nameValue, lastName: this.lastNameValue));
    }
  }
}
