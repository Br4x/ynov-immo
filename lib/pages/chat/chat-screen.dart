import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/chat/components/app_bar.dart';
import 'package:ynov_immo/pages/chat/components/body.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body()
    );
  }
}
