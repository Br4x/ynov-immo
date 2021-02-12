import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/dateTimePickers/components/app_bar.dart';
import 'package:ynov_immo/pages/dateTimePickers/components/body.dart';
import 'package:ynov_immo/api.dart';

class HomeScreenPickers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
    );
  }
}
