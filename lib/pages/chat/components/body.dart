import 'package:flutter/material.dart';
import 'chat_list.dart';
import 'send_chat_message.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: ChatList(),
        ),
        Expanded(
          flex: 0,
          child: InitSendChatMessage(),
        ),
      ],
    );
  }
}