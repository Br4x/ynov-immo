import 'package:flutter/material.dart';

class TitleImmo extends StatelessWidget {
  final String titleImmo;
  final String subTitleImmo;

  const TitleImmo({Key key, this.titleImmo, this.subTitleImmo}) : super(key: key);@override

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titleImmo,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  subTitleImmo,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
