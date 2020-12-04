import 'package:flutter/material.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/pages/details/components/app_bar.dart';
import 'package:ynov_immo/pages/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
