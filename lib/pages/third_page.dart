import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  final ThirdPageArguments arguments;

  const ThirdPage({Key key, this.arguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Name: ${this.arguments.name}",
              textAlign: TextAlign.center,
            ),
            Text(
              "Age: ${this.arguments.price}",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

class ThirdPageArguments {
  final String name;
  final int price;

  ThirdPageArguments({this.name, this.price});
}
