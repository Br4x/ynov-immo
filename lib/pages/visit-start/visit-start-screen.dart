import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/visit-start/components/app_bar.dart';
import 'package:ynov_immo/pages/visit-start/components/body.dart';

class VisitStartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: visitStartAppBar(context),
      body: Body(),
    );
  }
}