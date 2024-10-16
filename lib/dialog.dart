import 'package:flutter/material.dart';
import 'package:week4/drawer_page.dart';
import 'package:week4/nav.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              title: Text('Dialog Page'),
              backgroundColor: Colors.greenAccent,
            ),

        body: AlertDialog(
          title: Text('WARNING ALERT!!!'),
          content: Text('Yakin!! mau pindah ke drawer page???'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Page'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => DrawerPage()));
            // },
            _showDialog(context);
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}