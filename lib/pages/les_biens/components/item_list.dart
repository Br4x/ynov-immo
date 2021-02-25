import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/les_biens/components/item_card.dart';
//import 'package:ynov_immo/pages/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
    // ignore: deprecated_member_use
    //List<ItemCard> data = new List(1000);
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard()
        ],
      ),
    );
  }
}
