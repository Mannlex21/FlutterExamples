import 'package:flutter/material.dart';
import 'package:myapp/pages/navigatorPageExample.dart';

class FormsExample extends StatefulWidget {
  @override
  _FormsExample createState() => _FormsExample();
}

class _FormsExample extends State<FormsExample> {
  // NOTA: cuando se usa form dentro de un ListView, los valores se borran de los fields cuando hace scroll, entonces lo que
  // se tiene que hacer es agregar las variables TextEditingController dentro del campo 'controller' en el TextFormField. Y se tiene
  // que destruir las variables en el dispose, todo esto para que no este tomando espacio de memoria. ListView destruye lo que no esta en pantalla
  // NOTA 2: como otra opcion se puede usar la combinacion de SingleChildScrollView + Column cuando se trata de listas no tan grandes.
  // ref: https://medium.com/flutterworld/flutter-problem-listview-vs-column-singlechildscrollview-43fdde0fa355
  String nameValue;
  String lastNameValue;
  final formKey = GlobalKey<FormState>(); //Esta variable se puede obtener de cualquier widget del arbol de widget
  final nameController = TextEditingController(text: 'Manuel'); // Se puede inicializar con un valor desde aqui, pero lo correcto seria hacerlo
  // desde el initState, asi evitar desperdiciar recursos
  final lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implementacion de campos de formulario sin el widget form"),
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
            ),
            RaisedButton(
              child: Text("Aceptar"),
              onPressed: () {
                submit(context);
              },
            ),
            Container(
              height: 800,
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    this.nameController.dispose();
    this.lastNameController.dispose();
  }

  @override
  void initState() {
    super.initState();
    lastNameController.text = "Murillo";
  }

  void submit(BuildContext context) {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.of(context).pushNamed("/navigator", arguments: NavigatorSecondPageArguments(name: this.nameValue, lastName: this.lastNameValue));
    }
  }
}
