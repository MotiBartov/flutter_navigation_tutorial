import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final int age;

  const SecondPage({Key key, this.name, this.age}) : super(key: key);

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
              "Name: ${this.name}",
              textAlign: TextAlign.center,
            ),
            Text(
              "Age: ${this.age}",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
