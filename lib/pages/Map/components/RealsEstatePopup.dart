import 'package:flutter/material.dart';

import '../../../api.dart';


class RealEstatePopup extends StatelessWidget {
  const RealEstatePopup({Key key, this.realEstate}) : super(key: key);
  final RealEstate realEstate;

  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(realEstate.accroche),
            Text(realEstate.address),
            Text(realEstate.size.toString()),
            Text(realEstate.price.toString())
          ],
        ),
      ),
    );
  }
}