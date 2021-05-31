import 'package:flutter/material.dart';
import 'package:tabbar_flutter/HomePage.dart';
import 'package:tabbar_flutter/Screen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TabBar',
      theme: ThemeData.dark(),
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => HomePage(),
        Screen2.route: (context) => Screen2(),
      },
    );
  }
}
