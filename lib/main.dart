import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/bg.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
