import 'package:flutter/material.dart';

class DropDownApp extends StatefulWidget {
  const DropDownApp({super.key});

  @override
  State<DropDownApp> createState() => _DropDownAppState();
}

class _DropDownAppState extends State<DropDownApp> {
  String? _selectedItem = 'One';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Dropdown Page'),
      backgroundColor: Colors.greenAccent
      ),

      body: Center(
        child: DropdownButton<String>(
          value: _selectedItem,
          items: <String>['One', 'Two', 'Three'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue;
            });
          },
        ),
      ),
    );
  }
}