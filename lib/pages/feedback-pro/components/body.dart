import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/feedback-pro/components/textarea.dart';
import 'package:ynov_immo/pages/feedback-pro/components/buttonProp.dart';
import 'package:ynov_immo/pages/feedback-pro/components/buttonContact.dart';
import 'package:ynov_immo/pages/feedback-pro/components/showinfo.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            "Visite en cours",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(1.0)),
          ),
          FeedbackArea(),
          ButtonProp(),
          ButtonContact(),
          Showinfo(),
        ],
      ),
    );
  }
}
