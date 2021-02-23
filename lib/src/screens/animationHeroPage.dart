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
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: FadeInImage(
              image: NetworkImage('https://picsum.photos/id/$index/400/300'),
              placeholder: AssetImage("assets/spinner.gif"),
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
