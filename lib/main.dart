import 'package:flutter/material.dart';
import 'package:future_hacks/screens/screen1.dart';

void main() => runApp(MyHomePage());

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HackaTom',
      initialRoute: Screen1.routeName,
      routes: {
        Screen1.routeName: (_) => Screen1(),
      },
    );
  }
}
