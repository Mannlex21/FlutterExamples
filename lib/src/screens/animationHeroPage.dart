import 'package:flutter/material.dart';

class AnimationHeroExample extends StatelessWidget {
  const AnimationHeroExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso de navigator"),
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          final url = 'https://picsum.photos/id/$index/410/300';
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/animationHeroSecond', arguments: url);
            },
            child: Hero( // con esto se hace la animacion de la imagen cuando entra a la sig pantalla
              tag: url, //Debe ser el mismo que en el sig hero, es un ID, en este caso la url que nunca se repite
              child: Card(
                child: FadeInImage(
                  image: NetworkImage('https://picsum.photos/id/$index/400/300'),
                  placeholder: AssetImage("assets/spinner2.gif"),
                  height: 300,
                ),
              ),
            ),
          );

        },
      ),
    );
  }
}

class NavigatorSecondPageArguments {
  String name;
  String lastName;
  NavigatorSecondPageArguments({this.name, this.lastName});
}
