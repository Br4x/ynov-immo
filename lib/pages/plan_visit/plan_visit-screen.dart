import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/components/app_bar.dart';
import 'package:ynov_immo/pages/plan_visit/components/body.dart';

class PlanVisitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
    );
  }
}
