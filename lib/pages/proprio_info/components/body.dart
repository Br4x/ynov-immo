import 'dart:async';

import 'package:ynov_immo/api.dart';
import 'package:ynov_immo/constants.dart';
import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/home-screen.dart';
import 'package:ynov_immo/pages/proprio_info/components/button.dart';
import 'package:ynov_immo/pages/proprio_info/components/title_immo.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../api.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  RealEstateVisitApi _realEstateVisitApi = new RealEstateVisitApi();
  RealEstateVisit _realEstateVisit = new RealEstateVisit();
  RealEstateApi _realEstateApi = new RealEstateApi();
  UserApi _userApi = new UserApi();
  Completer<GoogleMapController> _controller = Completer();
  bool isPostFormInvalid = false;

  @override
  Widget build(BuildContext context) {
    var _realEstateTest;
    // ignore: unnecessary_statements
    () async => _realEstateTest = await _realEstateApi.realEstateIdGet(0);
    return Padding(
      padding: EdgeInsets.all(25),
      child: ListView(
        children: [
          TitleImmo(
              titleImmo: "{_userApi.userIdGet(_realEstateTest.accroche)}",
              subTitleImmo: "X km de chez vous"),
          RichText(
              text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.bold),
                  children: [
                TextSpan(
                  text: "Proprio : ",
                  style: TextStyle(color: ksecondaryColor),
                ),
                TextSpan(
                  text: "{_realEstateTest.idUser}",
                  style: TextStyle(color: ksecondaryColor),
                ),
              ])),
          SmoothStarRating(
            borderColor: kPrimaryColor,
            rating: 4,
          ),
          RichText(
            text: TextSpan(
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  .copyWith(fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: "Prix : ",
                  style: TextStyle(color: ksecondaryColor),
                ),
                TextSpan(
                  text: "{_realEstateTest.price}/visite",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ],
            ),
          ),
          CalendarCarousel(
            thisMonthDayBorderColor: Colors.grey,
            height: 420.0,
            daysHaveCircularBorder: false,
            markedDateCustomTextStyle: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
          CheckboxListTile(
            title: Text("title text"),
            value: true,
            onChanged: (newValue) {},
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          ),
          SizedBox(width: 20),
          Row(
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.black, width: 2),
                    // primary: Colors.black,
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.all(8.0),
                    minimumSize: Size(150, 50)),
                child: Text(
                  "Contacter proprio",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(width: 20),
              TextButton(
                  style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.black, width: 2),
                      // primary: Colors.black,
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.deepOrange,
                      padding: EdgeInsets.all(8.0),
                      minimumSize: Size(150, 50)),
                  child: Text(
                    'Booker la visite',
                  ),
                  onPressed: () {
                    _realEstateVisitApi.realEstateVisitPost(_realEstateVisit);
                  })
            ],
          ),
        ],
      ),
    );
  }
}
