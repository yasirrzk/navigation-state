import 'package:flutter/material.dart';
import 'package:week4/dialog.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(child: ElevatedButton(onPressed: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (BuildContext context) => MyDialog()));
      },
          child: Text("Kehalaman Dialog yaa")),),
    );
  }
}