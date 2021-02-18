import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/feedback/feedback-screen.dart';
import 'package:ynov_immo/pages/home/components/category_item.dart';

import '../home-screen.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Accueil",
            isActive: true,
            press: () {
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
          CategoryItem(
            title: "Feedback",
            // isActive: true,
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

          CategoryItem(
            title: "Combo Meal",
            press: () {},
          ),
          CategoryItem(
            title: "Chicken",
            press: () { },
          ),
          CategoryItem(
            title: "Beverages",
            press: () {},
          ),
          CategoryItem(
            title: "Snacks & Sides",
            press: () {},
          ),
        ],
      ),
    );
  }
}
