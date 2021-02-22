import 'package:flutter/material.dart';

class KeyboardExamples extends StatefulWidget {
  @override
  _KeyboardExamples createState() => _KeyboardExamples();
}

class _KeyboardExamples extends State<KeyboardExamples> {
  final formKey = GlobalKey<FormState>();

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
              decoration: InputDecoration(labelText: "Nombre:"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Apellido:"),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Numero de telefono:"),
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Email:"),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Edad:"),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Sitio web:"),
              keyboardType: TextInputType.url,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Sitio web:"),
              keyboardType: TextInputType.url,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }
}
