import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/sell/components/style/common_style.dart';

class PageTitle extends StatefulWidget {
  const PageTitle({Key key}) : super(key: key);

  @override
  _PageTitleState createState() => _PageTitleState();
}

class _PageTitleState extends State<PageTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Text(
        "Mettre en vente",
        textAlign: TextAlign.center,
        style: CommonStyle.titleText()
      ),
    );
  }
}
