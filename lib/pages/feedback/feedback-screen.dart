import 'package:flutter/material.dart';
import 'package:ynov_immo/api.dart';
import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/feedback/components/app_bar.dart';
import 'package:ynov_immo/pages/feedback/components/body.dart';


void login () {
  var apiInstance = new AuthApi();
  var user = new User(email: "admin@admin.com", password: "admin"); // User | create user

  try {
    var result = apiInstance.loginPost(user);
    print(result);
  } catch (e) {
    print("Exception when calling AuthApi->loginPost: $e\n");
  }
}

class FeedbackScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: feedbackAppBar(context),
      body: Body(),
    );
  }
}