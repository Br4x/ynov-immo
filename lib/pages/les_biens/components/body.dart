import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/les_biens/components/item_filtre.dart';
import 'package:ynov_immo/pages/les_biens/components/item_list.dart';
import 'package:ynov_immo/pages/les_biens/Search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SearchScreen();
                      },
                    ),
                  );
                },
              ),
              Center(
                child:
                  Text(
                    'Les Biens',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    )
                  )
              )
            ]
          ),
          ItemFiltreList(),
          ItemList(),
        ],
      ),
      // child: Center(
      //   child: Text(
      //     'Hello World',
      //     textDirection: TextDirection.ltr,
      //     style: TextStyle(
      //       fontSize: 32,
      //       color: Colors.black,
      //     )
      //   )
      // )
    );
  }
}
