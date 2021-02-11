import 'package:flutter/material.dart';
import 'package:gooey_carousel/gooey_carrousel.dart';

class Carousel  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GooeyCarousel(children: <Widget>[
      Container(color: Colors.red),
      Container(color: Colors.blue),
      Container(color: Colors.green),
    ],
    );
  }
}