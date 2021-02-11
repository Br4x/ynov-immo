import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ynov_immo/api.dart';
import 'package:ynov_immo/pages/visit-start/components/presence-button.dart';
import 'package:ynov_immo/pages/visit-start/components/start-button.dart';
import 'package:ynov_immo/pages/visit-start/constants.dart';
import 'package:ynov_immo/pages/visit-start/mock/fake-data.dart';

import '../../../api.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
    @override
    _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<Body> {
  User _user;
  RealEstate _realEstate;
  RealEstateVisit _realEstateVisit;

  @override
  void initState() {
    // récupération du user
    // mock
    setState(() {
      _user = userMock;
    });

    // récupération du real estate depuis la navigation de l'écran précédent
    //RealEstate realEstate = ModalRoute.of(context).settings.arguments;
    RealEstate realEstate;
    // sinon mock
    if (realEstate == null) {
      realEstate = realEstateMock;
    }
    setState(() {
      _realEstate = realEstate;
    });

    // récupération du real estate visit via l'API
    // TODO implement API call
    // mock
    setState(() {
      _realEstateVisit = realEstateVisitMock;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool isBooker = _user.id == _realEstateVisit.idBooker;

    setTimer(_realEstate.id, isBooker);

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Visite de \"${_realEstate.accroche}\"",
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
            isBooker ? juridicBlabla : visitorsText,
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
                  title: isBooker && _realEstateVisit.visitorIsReady == 0 || !isBooker && _realEstateVisit.bookerIsReady == 0
                      ? "..."
                      : isBooker ? "Les visiteurs sont là" : "L'agent est là",
                  press: null,
                  enabled: isBooker && _realEstateVisit.visitorIsReady == 0 || !isBooker && _realEstateVisit.bookerIsReady == 0
              )
            ],
          ),
          isBooker
              ? StartButton(
              title: "Commencer la visite",
              press: () => Scaffold.of(context).showSnackBar(SnackBar(content: Text(theVisitCanStart))),
              enabled: _realEstateVisit.visitorIsReady == 1 && _realEstateVisit.bookerIsReady == 1,
          )
              : Container()
        ],
      ),
    );
  }

  setTimer(int realEstateId, bool isBooker) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      // TODO implement API call to get new real estate visit
      // mock
      RealEstateVisit newRealEstateVisit = newRealEstateVisitMock;

      // test les visiteurs sont là
      int seconds = DateTime.now().second;
      if (seconds == 30) {
        newRealEstateVisit.visitorIsReady = 1;
      }

      if (isBooker && hasChanged(_realEstateVisit.visitorIsReady, newRealEstateVisit.visitorIsReady)) {

        setState(() {
          _realEstateVisit = newRealEstateVisit;
        });
        Scaffold.of(context).showSnackBar(SnackBar(content: Text(visitorsAreHere)));

      } else if (!isBooker && hasChanged(_realEstateVisit.bookerIsReady, newRealEstateVisit.bookerIsReady)) {

        setState(() {
          _realEstateVisit = newRealEstateVisit;
        });
        Scaffold.of(context).showSnackBar(SnackBar(content: Text(agentIsHere)));

      }
    });
  }

  hasChanged(int before, int now) {
    return before == 0 && now == 1;
  }

  updateIAmHere(bool isBooker) {
    this.setState(() {
      isBooker ? _realEstateVisit.bookerIsReady = 1 : _realEstateVisit.visitorIsReady = 1;
    });

    // TODO implement API call to update real estate visit
    // mock
    realEstateVisitMock = _realEstateVisit;

    Scaffold.of(context).showSnackBar(SnackBar(content: Text(iAmHere)));
  }

  formatDate(DateTime date) {
    return new DateFormat.H().format(date);
  }
}
