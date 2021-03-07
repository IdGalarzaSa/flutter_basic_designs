import 'package:flutter/material.dart';
import 'package:flutter_designs/src/pages/grid_page.dart';
import 'package:flutter_designs/src/pages/home_page.dart';
import 'package:flutter_designs/src/pages/scroll_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutte Designs',
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => HomePage(),
        "scrollPage": (BuildContext context) => ScrollPage(),
        "gridPage": (BuildContext context) => GridPage(),
      },
    );
  }
}
