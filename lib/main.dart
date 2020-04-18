import 'package:flutter/material.dart';
import 'package:navigation_tutorial/navigation/router.dart';
import 'package:navigation_tutorial/pages/initial_page.dart';

void main() {
  Router.createRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Router.sailor.generator(),
      navigatorKey: Router.sailor.navigatorKey,
      home: InitialPage(),
    );
  }
}
