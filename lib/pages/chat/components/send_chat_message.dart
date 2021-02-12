import 'package:flutter/material.dart';
import 'package:ynov_immo/api.dart';

class InitSendChatMessage extends StatefulWidget {
  InitSendChatMessage({Key key}) : super(key: key);

  @override
  SendChatMessage createState() => SendChatMessage();
}

class SendChatMessage extends State<InitSendChatMessage> {
  final _formKey = GlobalKey<FormState>();
  String text;

  void sendMessage(String text) {
    ChatCommentApi chatCommentApi = ChatCommentApi(ApiClient());
    var chatComment = ChatComment();
    chatComment.idChat = 1;
    chatComment.idUser = 15;
    chatComment.comment = text;
    chatComment.date = DateTime.now();
    chatCommentApi.chatCommentPost(chatComment);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Entrer votre message',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Merci d\'entrer votre message';
              }
              text = value;
              return null;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState.validate()) {
                sendMessage(text);
              }
            },
            child: Text('Envoyer'),
          ),
        ],
      ),
    );
  }
}
