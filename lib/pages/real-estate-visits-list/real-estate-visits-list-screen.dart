import 'package:flutter/material.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/pages/real-estate-visits-list/components/app_bar.dart';
import 'package:ynov_immo/pages/real-estate-visits-list/components/body.dart';

class RealEstateVisitsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: realEstateVisitsListAppBar(context),
      body: Body(),
    );
  }
}
