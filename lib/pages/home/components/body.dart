import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/components/category_list.dart';
import 'package:ynov_immo/pages/home/components/item_list.dart';
import 'package:ynov_immo/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 50),
          Container(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "Mode Présentation\n",
                      style: TextStyle(color: ksecondaryColor),
                    ),
                    TextSpan(
                      text: "Anthony FLores\n",
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    TextSpan(
                      text: "Ynov Info",
                      style: TextStyle(color: ksecondaryColor),
                    ),
                  ],
                ),
              )),
          // CategoryList(),
          // ItemList(),
        ],
      ),
    );
  }
}
