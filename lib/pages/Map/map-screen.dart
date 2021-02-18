import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/components/app_bar.dart';

import 'components/MapBody.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: MapBody(),
    );
  }
}