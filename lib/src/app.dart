import 'package:flutter/material.dart';
import 'package:myapp/src/screens/appBarPage.dart';
import 'package:myapp/src/screens/assetsExample.dart';
import 'package:myapp/src/screens/buttonPage.dart';
import 'package:myapp/src/screens/colorExample.dart';
import 'package:myapp/src/screens/columnPage.dart';
import 'package:myapp/src/screens/drawerPage.dart';
import 'package:myapp/src/screens/focusNodePage.dart';
import 'package:myapp/src/screens/fontPage.dart';
import 'package:myapp/src/screens/fieldsPage.dart';
import 'package:myapp/src/screens/formsPage.dart';
import 'package:myapp/src/screens/homePage.dart';
import 'package:myapp/src/screens/iconPage.dart';
import 'package:myapp/src/screens/imagePage.dart';
import 'package:myapp/src/screens/keyboardPage.dart';
import 'package:myapp/src/screens/listViewPage.dart';
import 'package:myapp/src/screens/marginPaddingPage.dart';
import 'package:myapp/src/screens/navigatorPageExample.dart';
import 'package:myapp/src/screens/rowPage.dart';
import 'package:myapp/src/screens/scaffoldPage.dart';
import 'package:myapp/src/screens/snackbarPage.dart';
import 'package:myapp/src/screens/statefulWidgetPage.dart';

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
        "/drawer": (BuildContext buildContext) => DrawerExample(),
        "/snackbar": (BuildContext buildContext) => SnackbarExample(),
      },
    );
  }
}
