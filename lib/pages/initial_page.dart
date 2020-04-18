import 'package:flutter/material.dart';
import 'package:navigation_tutorial/pages/second_page.dart';
import 'package:navigation_tutorial/pages/third_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key key}) : super(key: key);

  void onSecondPagePressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SecondPage(name: 'Moti', age: 45),
      ),
    );
  }

  void onThirdPagePressed(BuildContext context) {
    ThirdPageArguments arguments =
        ThirdPageArguments(name: "ThirdPage", price: 150);

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ThirdPage(
          arguments: arguments,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Initial Page'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              child: Text('Second Page'),
              onPressed: () => onSecondPagePressed(context),
            ),
            RaisedButton(
              child: Text('Third page'),
              onPressed: () => onThirdPagePressed(context),
            )
          ],
        ),
      ),
    );
  }
}
