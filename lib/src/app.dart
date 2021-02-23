import 'package:examples_app/src/screens/animationHeroSecondPage.dart';
import 'package:examples_app/src/screens/pickImagePage_screen.dart';
import 'package:flutter/material.dart';
import 'package:examples_app/src/screens/alertDialogPage.dart';
import 'package:examples_app/src/screens/animationHeroPage.dart';
import 'package:examples_app/src/screens/appBarPage.dart';
import 'package:examples_app/src/screens/assetsExample.dart';
import 'package:examples_app/src/screens/buttonPage.dart';
import 'package:examples_app/src/screens/colorExample.dart';
import 'package:examples_app/src/screens/columnPage.dart';
import 'package:examples_app/src/screens/drawerPage.dart';
import 'package:examples_app/src/screens/focusNodePage.dart';
import 'package:examples_app/src/screens/fontPage.dart';
import 'package:examples_app/src/screens/fieldsPage.dart';
import 'package:examples_app/src/screens/formsPage.dart';
import 'package:examples_app/src/screens/homePage.dart';
import 'package:examples_app/src/screens/iconPage.dart';
import 'package:examples_app/src/screens/imagePage.dart';
import 'package:examples_app/src/screens/keyboardPage.dart';
import 'package:examples_app/src/screens/listViewPage.dart';
import 'package:examples_app/src/screens/marginPaddingPage.dart';
import 'package:examples_app/src/screens/navigatorPageExample.dart';
import 'package:examples_app/src/screens/rowPage.dart';
import 'package:examples_app/src/screens/scaffoldPage.dart';
import 'package:examples_app/src/screens/simpleDialogPage.dart';
import 'package:examples_app/src/screens/snackbarPage.dart';
import 'package:examples_app/src/screens/statefulWidgetPage.dart';

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
        "/simpleDialog": (BuildContext buildContext) => SimpleDialogExample(),
        "/alertDialog": (BuildContext buildContext) => AlertDialogExample(),
        "/animationHero": (BuildContext buildContext) => AnimationHeroExample(),
        "/animationHeroSecond": (BuildContext buildContext) => AnimationHeroSecondExample(),
        "/pickImage": (BuildContext buildContext) => PickImagePageScreen(),
      },
    );
  }
}
