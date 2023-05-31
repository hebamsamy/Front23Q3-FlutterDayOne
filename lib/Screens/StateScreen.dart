import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  //monitor and order to re-build
  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int count = 0;
  List<Widget> list = [];
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  list.add(Text("sjfhsjfgas"));
                });
                // print(count);
              },
              icon: Icon(Icons.plus_one)),
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Column(children: list),
    );
  }
}
