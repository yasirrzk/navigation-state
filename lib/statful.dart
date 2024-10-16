import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<Stateful> createState() => _StfulState();
}

class _StfulState extends State<Stateful> {
  int counter = 0;

  void increment () {
    counter--;
  }

  void decrement () {
    counter++;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
        backgroundColor: Colors.greenAccent,
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              setState(() {

              });
            }, child: Icon(Icons.minimize)),
            Padding(
              padding: const EdgeInsets.only(right: 50,left: 50),
              child: Text("$counter", style: TextStyle(fontSize: 30),),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                counter++;
              });
            }, child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}