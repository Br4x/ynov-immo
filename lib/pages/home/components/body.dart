import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/components/category_list.dart';
import 'package:ynov_immo/pages/home/components/item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryList(),
          ItemList(),
        ],
      ),
    );
  }
}
