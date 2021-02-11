import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/sell/components/search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          "Adresse",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
        ),
        SearchPage(),
      ],
    );
  }
}
