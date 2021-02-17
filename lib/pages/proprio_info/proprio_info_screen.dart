import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/proprio_info/components/app_bar.dart';
import 'package:ynov_immo/pages/proprio_info/components/body.dart';

class ProprioInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProprioInfoAppBar(context),
      body: Body(),
    );
  }
}