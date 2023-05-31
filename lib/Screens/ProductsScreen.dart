import 'package:app/logic/data.dart';
import 'package:app/models/product.dart';

import '../models/category.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<Product> products = [];
  Data data = Data();
  @override
  Widget build(BuildContext context) {
    var parms = ModalRoute.of(context)?.settings.arguments as Category;
    products = data.filterByCategory(parms.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(parms.name),
      ),
      // body: ,
    );
  }
}
