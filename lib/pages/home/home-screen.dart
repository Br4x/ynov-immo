import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/components/app_bar.dart';
import 'package:ynov_immo/pages/home/components/body.dart';
import 'package:ynov_immo/api.dart';


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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
    );
  }
}
