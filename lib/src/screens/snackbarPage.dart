import 'package:flutter/material.dart';

class SnackbarExample extends StatelessWidget {
  SnackbarExample({Key key}) : super(key: key);

  final _scaffKeySnackbar = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKeySnackbar,
      appBar: AppBar(
        title: Text("Uso del snackbar"),
      ),
      body: Builder(builder: (BuildContext context) {
        // se creo este builder, porque el context que se le estaba pasando a _showSnackbar era de un punto mas arriba del arbol de widget
        // entonces con esto se crea un nuevo punto de partida con el cual podra buscar hacia arriba el Scaffold que pertenece a esta pagina
        // https://youtu.be/Gq0hE7VPu_k?t=225
        return Center(
            child: FlatButton(
          child: Text("Mostrar"),
          onPressed: () => _showSnackbar(context),
        ));
      }),
    );
  }

  void _showSnackbar(BuildContext context) {
    SnackBar snackbar = SnackBar(
      content: Text(
        "Elemento elminado",
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.grey[200],
      action: SnackBarAction(
        label: "Cancelar",
        textColor: Colors.blue,
        onPressed: () {
          print("Cancelado");
        },
      ),
    );

    Scaffold.of(context).showSnackBar(snackbar); // Con esta opcion se utiliza el contexto que se pasa a la funcion
    // _scaffKeySnackbar.currentState.showSnackBar(snackbar); // con esta opcion se usa el id que se le asigno al scaffold
  }
}
