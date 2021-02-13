import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/congrats_visit_validated/mock/fake-data.dart';

import '../../../api.dart';
import 'package:intl/intl.dart';


class Body extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}


class _BodyWidgetState extends State<Body> {
  RealEstateVisit _realEstateVisit;
  String date;
  String begin;
  String end;

  @override
  void initState() {

    RealEstate realEstate;
    if (realEstate == null) {
      realEstate = realEstateMock;
    }

    setState(() {
      _realEstateVisit = realEstateVisitMock;
    });
    date  = DateFormat('d MMM, yyyy').format(_realEstateVisit.startDate);
    begin  = DateFormat('h:mm a').format(_realEstateVisit.startTime);
    end  = DateFormat('h:mm a').format(_realEstateVisit.endTime);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage('./assets/images/mail.png')),
          Text(
            "Félicitation !\n",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(1.0)),
          ),
          Text(
            "Viste prévue le \"$date\" entre \"$begin\" et \"$end\"\n\n",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.6)),
          ),
          Text(
            "Prochaines étapes :",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(1.0)),
          ),
          Text(
                " \n\n     -  Attendre que le propriétaire du bien valide votre visite."
                "\n\n  -  Faire signer la visite aux visiteurs pour valider que vous y etiez et les visiteurs aussi."
                "\n\n  -  Faire la visite."
                "\n\n  -  Optionnel : Envoyer un feedback au propiétaire",
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.6)),
          ),
        ],
      ),
    );
  }
}