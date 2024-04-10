import 'package:flutter/material.dart';

//import 'main.dart';
import 'package:burciagadrawerv2/main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Row centrado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Row Izquierda',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Row Derecha',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.movies)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.abc_sharp,
              text: 'Row Igualado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.contacts)}),
          _buildDrawerItem(
              icon: Icons.accessibility,
              text: 'Row Alrededor',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.alrededor)}),
          _buildDrawerItem(
              icon: Icons.add_alarm_rounded,
              text: 'Row Espacio entre',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.espacio)}),
          _buildDrawerItem(
              icon: Icons.apps,
              text: 'Row Esctrecho',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.estrecho)}),
          Divider(),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Aarón Burciaga",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
