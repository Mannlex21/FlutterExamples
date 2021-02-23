import 'package:flutter/material.dart';

class AnimationHeroSecondExample extends StatelessWidget {
  const AnimationHeroSecondExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String url = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de navigator"),
      ),
      body: Hero( // con esto se hace la animacion de la imagen cuando entra a esta pantalla
        tag: url, //Debe ser el mismo que en el sig hero, es un ID, en este caso la url que nunca se repite
        child: FadeInImage(
          image: NetworkImage(url),
          placeholder: AssetImage("assets/spinner2.gif"),
          fit: BoxFit.cover,
          height: 300,
          width: 410,
        ),
      ),
    );
  }
}

class NavigatorSecondPageArguments {
  String name;
  String lastName;
  NavigatorSecondPageArguments({this.name, this.lastName});
}
