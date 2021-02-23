import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  DrawerExample({Key key}) : super(key: key);

  final _scaffKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffKey,
      appBar: AppBar(
        title: Text("Uso del drawer"),
      ),
      body: Center(),
      //drawer: Drawer(), // Lado izquierdo
      endDrawer: _getDrawer(context), // Lado derecho
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu),
        onPressed: () => _scaffKey.currentState.openEndDrawer(), // abre drawer desde otro boton
      ),
    );
  }

  Widget _getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Header
          // DrawerHeader(
          //   decoration: BoxDecoration(color: Colors.orange),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       FlutterLogo(
          //         size: 100,
          //       ),
          //       Text(
          //         "Drawer",
          //         style: TextStyle(color: Colors.white),
          //       )
          //     ],
          //   ),
          // ),

          // Esta es otra opcion de header drawer
          UserAccountsDrawerHeader(
            accountEmail: Text("correo@gmail.com"),
            accountName: Text("Mannlex21"),
            currentAccountPicture: FlutterLogo(),
            otherAccountsPictures: [
              FlutterLogo(),
              FlutterLogo(),
            ],
            onDetailsPressed: () {},
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepOrange, Colors.yellow], end: Alignment.bottomRight)),
          ),
          ListTile(
            title: Text("Inicio"),
            leading: Icon(Icons.home),
            onTap: () => showHome(context),
          )
        ],
      ),
    );
  }

  void showHome(BuildContext context) {
    Navigator.pop(context); // para ocultar el drawer
  }
}
