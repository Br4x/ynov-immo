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
            svgSrc: "assets/icons/visitor.svg",
            title: "Laisser un feedback au propriétaire",
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
        ],
      ),
    );
  }
}
