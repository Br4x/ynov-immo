import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/components/app_bar.dart';
import 'package:ynov_immo/pages/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
    );
  }
}
