import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

//statelessWidget
//statefullWidget

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Home"),
        leading: const Icon(
          Icons.menu,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.account_circle),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 180, 169, 163),
      // body: Container(
      //   width: 300,
      //   height: 300,

      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Hello world !!!!!",
              style: TextStyle(
                  fontFamily: "Handrawn",
                  fontSize: 40,
                  backgroundColor: Colors.grey),
            ),
          ),
          Expanded(child: Image.asset("assets/images/iti.png")),
          // Row(
          //   children: [
          //     Expanded(child: Image.asset("assets/images/iti.png")),
          //     SizedBox(
          //       width: 200,
          //     )
          //   ],
          // ),
          Row(
            children: [
              Expanded(child: Image.asset("assets/images/iti.png")),
              Expanded(child: Image.asset("assets/images/iti.png")),
            ],
          )
        ],
      ),
    ));
  }
}
