import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/dateTimePickers/components/pickers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pickers(),
    );
  }
}
