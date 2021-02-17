import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/details/details-screen.dart';
import 'package:ynov_immo/pages/feedback-pro/feedback-pro.dart';
import 'package:ynov_immo/pages/home/components/menu_button.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          MenuButton(
            svgSrc: "assets/icons/map.svg",
            title: "Trouver un bien",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FeedbackScreen();
                  },
                ),
              );
            },
          ),
          MenuButton(
            svgSrc: "assets/icons/sell_house.svg",
            title: "Vendre un bien",
            press: () {},
          ),
          MenuButton(
            svgSrc: "assets/icons/visitor.svg",
            title: "Faire visiter un bien",
            press: () {},
          )
        ],
      ),
    );
  }
}
