import 'package:flutter/material.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/pages/feedback-pro/components/app_bar.dart';
import 'package:ynov_immo/pages/feedback-pro/components/body.dart';

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: feedbackBar(context),
      body: Body(),
    );
  }
}
