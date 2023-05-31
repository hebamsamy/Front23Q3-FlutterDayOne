import 'package:app/Screens/CartBody.dart';
import 'package:app/Screens/CatergoryBody.dart';
import 'package:app/Screens/HomeBody.dart';
import 'package:app/Screens/SettingsBody.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  //monitor and order to re-build
  @override
  State<MainScreen> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  List<String> list = [
    "Home",
    "Cetergory",
    "Cart",
    "Settings",
  ];
  List<Widget> content = [
    HomeBody(),
    CategoryBody(),
    CartBody(),
    SettingBody()
  ];

  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text(list[index]),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/profile");
              },
              icon: Icon(Icons.account_circle)),
        ],
      ),
      body: content[index],
      bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.grey[300],
          // type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                // backgroundColor: Colors.amberAccent,
                icon: Icon(Icons.home),
                label: list[0]),
            BottomNavigationBarItem(
                // backgroundColor: Colors.orange,
                icon: Icon(Icons.category),
                label: list[1]),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: list[2]),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: list[3]),
          ]),
    );
  }
}
