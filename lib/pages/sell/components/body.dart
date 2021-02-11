import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/sell/components/interfaces/sell_form.dart';
import 'package:ynov_immo/pages/sell/components/page_title.dart';
import 'package:ynov_immo/pages/sell/components/property_description.dart';
import 'package:ynov_immo/pages/sell/components/search.dart';
import 'package:ynov_immo/pages/sell/components/property_images/property_images.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  SellForm sellForm = new SellForm();

  callback(String variable, dynamic value) {
    setState(() {
      sellForm[variable] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PageTitle(),
        PropertyDescription(setParentState: callback),
        Text(
          "Adresse",
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
        ),
        SearchPage(),
        PropertyImages(setParentState: callback),
      ],
    );
  }
}
