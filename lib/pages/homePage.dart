import 'package:flutter/material.dart';
import 'package:myapp/pages/navigatorPageExample.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso basico del Navigator"),
      ),
      body: Center(
        child: ListRoutes(),
      ),
    );
  }

  void goToPage(BuildContext context) {
    //Esta es una forma, pero no la mas optima para pasar de pagina
    // final route = MaterialPageRoute(builder: (BuildContext context) {
    //   return SecondPageExample(name: "Marvin");
    // });

    // Navigator.of(context).push(route);

    Navigator.of(context).pushNamed('/navigator', arguments: NavigatorSecondPageArguments(name: 'Manuel', lastName: 'Murillo'));
  }
}

class ListRoutes extends StatelessWidget {
  ListRoutes({Key key}) : super(key: key);

  final List<Route> routes = [
    Route("Navigator", "navigator", NavigatorSecondPageArguments(name: 'Manuel', lastName: 'Murillo')),
    Route("Image", "image", null),
    Route("Icon", "icon", null),
    Route("Scaffold", "scaffold", null),
    Route("AppBar", "appBar", null),
    Route("Column", "column", null),
    Route("Row", "row", null),
    Route("Margin & Padding", "marginPadding", null),
    Route("Color", "color", null),
    Route("List View", "listView", null),
    Route("Assets", "assets", null),
    Route("Fonts", "fonts", null),
    Route("Stateful Widget", "statefulWidget", null),
    Route("Button", "button", null),
    Route("Fields", "field", null),
    Route("Form", "form", null),
  ];

  @override
  Widget build(BuildContext buildContext) {
    return ListView.builder(
      itemCount: routes.length,
      itemBuilder: (BuildContext context, int index) {
        return FlatButton(
          child: Text("${routes[index].name}"),
          onPressed: () => goToPage(context, "${routes[index].route}", routes[index].arguments),
        );
      },
    );
  }

  void goToPage(BuildContext context, name, var arguments) => Navigator.of(context).pushNamed('/$name', arguments: arguments);
}

class Route {
  String name;
  String route;
  final arguments;

  Route(this.name, this.route, this.arguments);
}
