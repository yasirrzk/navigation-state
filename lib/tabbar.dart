import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar Page"),
            backgroundColor: Colors.green,
              bottom: TabBar(
                tabs: [
                  Tab(child: Text("Chat"),),
                  Tab(child: Text("Storry"),),
                  Tab(child: Text("Panggilan"),),
                ],
              ),
          ),

          body: TabBarView(
            children: [
              Text("Halaman Chat"),
              Text("Halaman Storry"),
              Text("Halaman Panggilan"),
            ],
          ),
        ),
    );
  }
}