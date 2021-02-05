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
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Text('Vous souhaitez :',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black.withOpacity(0.4),
          )
      )
  ));
  }
}
