import 'package:flutter/material.dart';

class SimpleDialogExample extends StatelessWidget {
  SimpleDialogExample({Key key}) : super(key: key);

  final _scaffKeySnackbar = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKeySnackbar,
      appBar: AppBar(
        title: Text("Uso del snackbar"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Mostrar"),
          onPressed: () => _showDialog(context),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Seleccione"),
          children: [
            ListTile(
              title: Text("Eliminar"),
              leading: Icon(Icons.delete),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Editar"),
              leading: Icon(Icons.edit),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
      barrierDismissible: false, // Activa o desactiva el tap detras de dialog para cerrar
    );
  }
}
