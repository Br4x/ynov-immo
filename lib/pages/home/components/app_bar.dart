import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ynov_immo/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.red[400],
    elevation: 1,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      color: Colors.white,
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline5
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Ynov ",
            style: TextStyle(color: Colors.white),
          ),
          TextSpan(
            text: "Immo",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/notification.svg"),
        onPressed: () {},
      ),
    ],
  );
}
