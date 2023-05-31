import 'package:app/logic/data.dart';
import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  Data bank = Data();

  @override
  Widget build(BuildContext context) {
    // var test = bank.CategoryList.map(
    //   (e) => e.name,
    // );
    return ListView(
      children: bank.CategoryList.map((e) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            tileColor: Colors.amber,
            title: Text(
              e.name,
              style: TextStyle(fontSize: 30),
            ),
            onTap: () {
              Navigator.of(context).pushNamed("/products", arguments: e);
            },
          ),
        );
      }).toList(),
    );
  }
}

// class CategoryCard extends StatelessWidget {
//   CategoryCard({required this.category});
//   Category category;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ListTile(
//         tileColor: Colors.amber,
//         title: Text(
//           category.name,
//           style: TextStyle(fontSize: 30),
//         ),
//       ),
//     );
//   }
// }
