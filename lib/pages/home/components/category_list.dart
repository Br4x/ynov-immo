import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Center(
      child: Padding(
      padding: EdgeInsets.fromLTRB(0, 30, 0,20),
      child: Text('Vous souhaitez :',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white
          )
      )
  ));
  }
}
