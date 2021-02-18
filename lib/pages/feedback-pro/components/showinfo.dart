import 'package:flutter/material.dart';

class Showinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Tooltip(
        message: "Pourquoi la visite n'a pas marché, etc...",
        child: FlatButton(
          minWidth: 100,
          onPressed: () {},
          child: Icon(
            Icons.info_outline,
            size: 40,
            color: Colors.red[400],
          ),
        ),
      ),
    );
  }
}
