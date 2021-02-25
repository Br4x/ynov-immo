import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/les_biens/components/item_filtre.dart';

class Filtre extends StatelessWidget {
  String name;
  @override
  Widget build(BuildContext context) {
    Row(
      children: <Widget>[
        Text(
          name,
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 10,
            color: Colors.black,
          )
        ),
        IconButton(
          icon: 
            Icon(
              Icons.clear, 
              color: Colors.black,
            ), 
            onPressed: (){

          })
      ]
    );
  }
}

class FiltreList extends StatelessWidget {
  const FiltreList({
    Key key,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Filtres',
                textDirection: TextDirection.ltr,                 
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                )
              ),
              IconButton(
                 icon: Icon(
                  Icons.add,
                color: Colors.green,
                ),
                onPressed: (){

              },
              )
            ]
          ),
          Row(
            children: <Widget>[

            ]
          )
        ],
      ),
    );
  }
}
