import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

import '../../../api.dart';

class RealEstateMarker extends Marker {
  RealEstateMarker({@required this.realEstate})
      : super(
    anchorPos: AnchorPos.align(AnchorAlign.top),
    height: 80.0,
    width: 80.0,
    point: LatLng(double.tryParse(realEstate.latitude) ?? 0.0, double.tryParse(realEstate.longitude) ?? 0.0) ,
    builder: (BuildContext ctx) => Container(
      child: FlutterLogo(),
    ),
  );

  final RealEstate realEstate;
}