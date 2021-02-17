import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/pages/home/home-screen.dart';

AppBar ProprioInfoAppBar(BuildContext context) {
  return AppBar(
    elevation: 1,
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
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
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Ynov",
            style: TextStyle(color: ksecondaryColor),
          ),
          TextSpan(
            text: "Immo",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/person.svg"),
        onPressed: () {},
      ),
    ],
  );
}