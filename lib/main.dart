import 'package:flutter/material.dart';
import 'package:myapp/pages/appBarPage.dart';
import 'package:myapp/pages/assetsExample.dart';
import 'package:myapp/pages/buttonPage.dart';
import 'package:myapp/pages/colorExample.dart';
import 'package:myapp/pages/columnPage.dart';
import 'package:myapp/pages/focusNodePage.dart';
import 'package:myapp/pages/fontPage.dart';
import 'package:myapp/pages/fieldsPage.dart';
import 'package:myapp/pages/formsPage.dart';
import 'package:myapp/pages/homePage.dart';
import 'package:myapp/pages/iconPage.dart';
import 'package:myapp/pages/imagePage.dart';
import 'package:myapp/pages/keyboardPage.dart';
import 'package:myapp/pages/listViewPage.dart';
import 'package:myapp/pages/marginPaddingPage.dart';
import 'package:myapp/pages/navigatorPageExample.dart';
import 'package:myapp/pages/rowPage.dart';
import 'package:myapp/pages/scaffoldPage.dart';
import 'package:myapp/pages/statefulWidgetPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // fontFamily: "Oi",
        primarySwatch: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: NavigatorExample(),
      initialRoute: "/",
      routes: {
        "/": (BuildContext buildContext) => HomePage(),
        "/navigator": (BuildContext buildContext) => NavigatorSecondPageExample(),
        "/image": (BuildContext buildContext) => ImageExample(),
        "/icon": (BuildContext buildContext) => IconExample(),
        "/scaffold": (BuildContext buildContext) => ScaffoldExample(),
        "/appBar": (BuildContext buildContext) => AppBarExample(),
        "/column": (BuildContext buildContext) => ColumnExample(),
        "/row": (BuildContext buildContext) => RowExample(),
        "/marginPadding": (BuildContext buildContext) => MarginPaddingExample(),
        "/color": (BuildContext buildContext) => ColorsExample(),
        "/listView": (BuildContext buildContext) => ListViewExample(),
        "/assets": (BuildContext buildContext) => AssetsExample(),
        "/fonts": (BuildContext buildContext) => FontsExample(),
        "/statefulWidget": (BuildContext buildContext) => StatefulWidgetExample(),
        "/button": (BuildContext buildContext) => ButtonExample(),
        "/field": (BuildContext buildContext) => TypeFieldsExample(),
        "/form": (BuildContext buildContext) => FormsExample(),
        "/keyboard": (BuildContext buildContext) => KeyboardExamples(),
        "/focusNode": (BuildContext buildContext) => FocusNodeExample(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Hola, bienvenido a flutter",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
            backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
