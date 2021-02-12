import 'package:flutter/material.dart';

class CommonStyle {
  static InputDecoration textFieldDecoration(String hintText) {
    return InputDecoration(
        hintStyle: TextStyle(fontFamily: 'RobotoMono'),
        hintText: hintText,
        border: OutlineInputBorder(),
        isDense: true,
        contentPadding: EdgeInsets.all(8));
  }

  static TextStyle text() {
    return TextStyle(fontSize: 18, fontFamily: 'RobotoMono');
  }

  static TextStyle errorText() {
    return TextStyle(
      fontSize: 11,
      color: Colors.redAccent
    );
  }

  static TextStyle titleText() {
    return TextStyle(
        fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'RobotoMono');
  }
}
