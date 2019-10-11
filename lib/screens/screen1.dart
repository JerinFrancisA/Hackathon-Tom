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
        appBar: AppBar(
          title: Text('HackaTom'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Icon(Icons.account_circle),
          ],
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                FlutterWebBrowser.openWebPage(
                  url: hacks[index]['href'],
                  androidToolbarColor: Colors.indigo,
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  elevation: 6.0,
                  child: ListTile(
                    title: Text(
                      hacks[index]['event'],
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Start: ' +
                          hacks[index]['start'] +
                          '\nEnd: ' +
                          hacks[index]['end'],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Icon(
                      Icons.play_arrow,
                      size: 45.0,
                    ),
                    isThreeLine: true,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
