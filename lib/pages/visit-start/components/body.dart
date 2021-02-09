import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ynov_immo/api.dart';
import 'package:ynov_immo/pages/visit-start/components/presence-button.dart';
import 'package:ynov_immo/pages/visit-start/components/start-button.dart';

import '../../../api.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
    @override
    _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<Body> {
  RealEstateVisit _realEstateVisit;

  final user_mock = User.fromJson({
    'id': 1
  });

  final realEstate_mock = RealEstate.fromJson({
    'id': 1,
    'accroche': 'Maison de campagne'
  });

  final realEstateVisit_mock = RealEstateVisit.fromJson({
    'id': 1,
    'id_real_estate': 1,
    'id_booker': 0,
    'id_visitor': 1,
    'start_date': '2021-02-08T23:15:42.141Z',
    'end_date': '2021-02-08T23:15:42.141Z',
    'start_time': '2021-02-08T14:15:42.141Z',
    'end_time': '2021-02-08T16:15:42.141Z',
    'booker_is_ready': 0,
    'visitor_is_ready': 0
  });

  final iAmHereSnackBar = SnackBar(content: Text("Votre présence est enregistrée !"));
  final theyAreHereSnackBar = SnackBar(content: Text("Leur présence est enregistrée !"));
  final bookerIsHereSnackBar = SnackBar(content: Text("Sa présence est enregistrée !"));
  final startTheVisitSnackBar = SnackBar(content: Text("La visite peut commencer !"));
  final visitorsAreHereSnackBar = SnackBar(content: Text("Les visiteurs sont là !"));
  final agentIsHereSnackBar = SnackBar(content: Text("L'agent immobilier est là !"));

  @override
  Widget build(BuildContext context) {

    formatDate(realEstateVisit_mock.startTime);


    // récupération du real estate depuis la navigation de l'écran précédent
    RealEstate realEstate = ModalRoute.of(context).settings.arguments;
    // sinon mock
    if (realEstate == null) {
      realEstate = realEstate_mock;
    }

    // mock de real estate visit
    if (_realEstateVisit == null) {
      setState(() {
        _realEstateVisit = realEstateVisit_mock;
      });
    }

    final bool isBooker = userIsBooker(user_mock.id, realEstateVisit_mock);

    setTimer(realEstate.id, isBooker);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Visite de \"${realEstate_mock.accroche}\"",
                style: TextStyle(
                    color: kTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "Prévue à ${formatDate(_realEstateVisit.startTime)}h jusqu'à ${formatDate(_realEstateVisit.endTime)}h",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          Text(
            "En commençant cette visite, vous attestez l'effectuer en la qualité d'agent immobilier.",
            style: TextStyle(
              color: kTextColor,
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              PresenceButton(
                title: "Je suis là",
                press: () => updateIAmHere(isBooker),
                enabled: isBooker && _realEstateVisit.bookerIsReady == 0 || !isBooker && _realEstateVisit.visitorIsReady == 0,
              ),
              PresenceButton(
                  title: isBooker ? "Les visiteurs sont là" : "L'agent est là",
                  press: () => updateTheyAreHere(isBooker),
                  enabled: isBooker && _realEstateVisit.visitorIsReady == 0 || !isBooker && _realEstateVisit.bookerIsReady == 0
              )
            ],
          ),
          StartButton(
              title: "Commencer la visite",
              press: () => Scaffold.of(context).showSnackBar(startTheVisitSnackBar),
              enabled: _realEstateVisit.visitorIsReady == 1 && _realEstateVisit.bookerIsReady == 1,
          )
        ],
      ),
    );
  }

  setTimer(int realEstateId, bool isBooker) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      // TODO récupérer real estate visit
      final new_realEstateVisit_mock = RealEstateVisit.fromJson({
        'id': 1,
        'id_real_estate': 1,
        'id_booker': 1,
        'id_visitor': 0,
        'start_date': '2021-02-08T23:15:42.141Z',
        'end_date': '2021-02-08T23:15:42.141Z',
        'start_time': '2021-02-08T14:15:42.141Z',
        'end_time': '2021-02-08T15:15:42.141Z',
        'booker_is_ready': 0,
        'visitor_is_ready': 0
      });

      if (isBooker && realEstateVisit_mock.visitorIsReady == 0 && new_realEstateVisit_mock.visitorIsReady == 1) {
        Scaffold.of(context).showSnackBar(visitorsAreHereSnackBar);
      } else if (!isBooker && realEstateVisit_mock.bookerIsReady == 0 && new_realEstateVisit_mock.bookerIsReady == 1) {
        Scaffold.of(context).showSnackBar(agentIsHereSnackBar);
      }

      /*setState(() {
        _realEstateVisit = new_realEstateVisit_mock;
      });*/
    });
  }

  userIsBooker(int userId, RealEstateVisit realEstateVisit) {
    return userId == realEstateVisit.idBooker;
  }

  updateIAmHere(bool isBooker) {
    // TODO API CALL
    if (isBooker) {
      this.setState(() {
        _realEstateVisit.bookerIsReady = 1;
      });
    } else {
      this.setState(() {
        _realEstateVisit.visitorIsReady = 1;
      });
    }
    Scaffold.of(context).showSnackBar(iAmHereSnackBar);
  }

  updateTheyAreHere(bool isBooker) {
    // TODO API CALL
    if (isBooker) {
      this.setState(() {
        _realEstateVisit.visitorIsReady = 1;
        Scaffold.of(context).showSnackBar(theyAreHereSnackBar);
      });
    } else {
      this.setState(() {
        _realEstateVisit.bookerIsReady = 1;
        Scaffold.of(context).showSnackBar(bookerIsHereSnackBar);
      });
    }
  }

  formatDate(DateTime date) {
    return new DateFormat.H().format(date);
  }
}
