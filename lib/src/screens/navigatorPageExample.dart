import 'package:flutter/material.dart';

class NavigatorSecondPageExample extends StatelessWidget {
  // se quito el this.name porque ya no se esta mandando el dato name por el primer metodo visto en la pagina myHomePage
  //const SecondPageExample({Key key, this.name}) : super(key: key);
  const NavigatorSecondPageExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // aqui obtiene los parametros mandados de la primera pagina, se creo una clase porque
    // se esta obteniendo mas de un dato
    NavigatorSecondPageArguments arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de navigator"),
      ),
      body: Center(
        child: Text("${arguments.name} ${arguments.lastName}"),
      ),
    );
  }
}

class NavigatorSecondPageArguments {
  String name;
  String lastName;
  NavigatorSecondPageArguments({this.name, this.lastName});
}
