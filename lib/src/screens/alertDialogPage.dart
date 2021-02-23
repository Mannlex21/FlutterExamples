import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {
  AlertDialogExample({Key key}) : super(key: key);

  final _scaffKeySnackbar = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKeySnackbar,
      appBar: AppBar(
        title: Text("Uso del simple dialog"),
      ),
      body: Center(
        child: TextButton(
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
        return AlertDialog(
          title: Text("Pregunta"),
          content: Text("¿Seguro desea elmininar el elemento?"),
          actions: [
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: Text("Si"),
              onPressed: () {
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
