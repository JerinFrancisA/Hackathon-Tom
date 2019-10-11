import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  static const routeName = 'Screen1';

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(''),
              trailing: Icon(Icons.play_arrow),
            );
          },
        ),
      ),
    );
  }
}
