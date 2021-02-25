import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/les_biens/components/app_dart.dart';
import 'package:ynov_immo/pages/les_biens/components/body.dart';
import 'package:ynov_immo/api.dart';


class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(context),
      body: Body(),
    );
  }
}