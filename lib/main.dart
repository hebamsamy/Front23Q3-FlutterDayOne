import 'package:app/Screens/MainScreen.dart';
import 'package:app/Screens/ProductsScreen.dart';
import 'package:app/Screens/profileScreen.dart';
import 'package:flutter/material.dart';
// import './Screens/Dayone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MainScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => MainScreen(),
        "/profile": (context) => ProfileScreen(),
        "/products": (context) => ProductScreen(),
      },
    );
  }
}

//statelessWidget
//statefullWidget

