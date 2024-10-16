import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:week4/dialog.dart';
import 'package:week4/nav.dart';
import 'package:week4/text1.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  int _currentIndex = 0;

  final List<Widget> _children = [
    MyDialog(),
    Nav(),
    Text1(),
  ];
  void onTabTabbed(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(currentIndex: _currentIndex,
      onTap: onTabTabbed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.holiday_village),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.holiday_village),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.holiday_village),label: "Home"),
      ],),
    );
  }
}