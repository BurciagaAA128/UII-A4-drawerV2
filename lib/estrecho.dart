import 'package:burciagadrawerv2/drawer_menu.dart';
import 'package:flutter/material.dart';

class Estrecho extends StatelessWidget {
  static const String routeName = '/estrecho';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burciaga Estrecho"),
        backgroundColor: Color(0xffe17378),
      ),
      drawer: DrawerMenu(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(0.0),
            color: Colors.cyanAccent,
            width: 80.0,
            height: 80.0,
          ),
          Container(
            padding: const EdgeInsets.all(0.0),
            color: Colors.blueAccent,
            width: 80.0,
            height: 80.0,
          ),
          Container(
            padding: const EdgeInsets.all(0.0),
            color: Colors.orangeAccent,
            width: 80.0,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
