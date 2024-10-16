import 'package:flutter/material.dart';
import 'package:week4/Bottom_Shet.dart';
import 'package:week4/botNavbar.dart';
import 'package:week4/dialog.dart';
import 'package:week4/drop_down_app.dart';
import 'package:week4/nav.dart';
import 'package:week4/snackbar_page.dart';
import 'package:week4/statful.dart';
import 'package:week4/tabbar.dart';
import 'package:week4/text1.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Page'),
        backgroundColor: Colors.blueAccent,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),

            ListTile(
              title: Text('Statefull'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => Stateful()));
              },
            ),

            ListTile(
              title: Text('Dialog'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => MyDialog()));
              },
            ),

            ListTile(
              title: Text('SnackBar'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => SnackbarPage()));
              },
            ),

            ListTile(
              title: Text('Text Field'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => Text1()));
              },
            ),

            ListTile(
              title: Text('Tap Bar'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => Tabbar()));
              },
            ),

            ListTile(
              title: Text('Drop Down'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => DropDownApp()));
              },
            ),

            ListTile(
              title: Text('Bottom Navigator Bar'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => Botnavbar()));
              },
            ),

            ListTile(
              title: Text('Bottom Sheet'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => BottomShet()));
              },
            ),

            ListTile(
              title: Text('Drawer'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => DrawerPage()));
              },
            ),

            ListTile(
              title: Text('Navigation'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) => Nav()));
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('Swipe from the left to open the drawer')),
    );
  }
}