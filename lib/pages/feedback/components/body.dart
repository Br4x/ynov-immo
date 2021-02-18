import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/feedback/components/CategoryList.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryList(),
          ItemList()
        ],
      ),
    );
  }
}
