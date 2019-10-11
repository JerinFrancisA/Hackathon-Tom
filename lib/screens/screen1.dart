import 'package:flutter/material.dart';
import 'package:future_hacks/utilities/hacks.dart';

import 'package:flutter_web_browser/flutter_web_browser.dart';

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
            return GestureDetector(
              onTap: () {
                FlutterWebBrowser.openWebPage(
                  url: hacks[index]['href'],
                  androidToolbarColor: Colors.white,
                );
              },
              child: ListTile(
                title: Text(hacks[index]['event'] +
                    '\nStart: ' +
                    hacks[index]['start'] +
                    '\nEnd: ' +
                    hacks[index]['end']),
                trailing: Icon(Icons.play_arrow),
                isThreeLine: true,
              ),
            );
          },
        ),
      ),
    );
  }
}
