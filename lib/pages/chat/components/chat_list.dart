import 'package:flutter/material.dart';
import 'package:ynov_immo/api.dart';

class ChatList extends StatefulWidget {
  ChatList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ChatListState createState() => new _ChatListState();
}

class _ChatListState extends State<ChatList> {
  var asyncWidget;

  // TODO : Need to get from authentication or in state ?
  var currentUserId = 15;

  ChatCommentPagination commentPagination;
  List<Widget> chats = new List<Widget>();

  void getComments() async {
    ChatCommentApi chatCommentApi = ChatCommentApi(ApiClient());
    Future<ChatCommentPagination> commentsFutur =
        chatCommentApi.chatCommentGet(limit: 200);
    commentsFutur.then((comments) => {
          comments?.data?.asMap()?.forEach((index, element) {
            var commentBuild =
                element.comment + " - " + element.date.toIso8601String();

            print(element);

            var textStyle =
                TextStyle(color: Color.fromRGBO(118, 120, 121, 1.0));
            var mainAxisAlignment = MainAxisAlignment.start;

            if (element.idUser == currentUserId) {
              textStyle = TextStyle(color: Color.fromRGBO(8, 105, 193, 1.0));
              mainAxisAlignment = MainAxisAlignment.end;
            }

            var text = Text(commentBuild, style: textStyle);

            setState(() {
              chats.add(
                  Row(mainAxisAlignment: mainAxisAlignment, children: [text]));
            });
          })
        });
  }

  @override
  initState() {
    super.initState();
    this.getComments();
  }

  @override
  Widget build(BuildContext context) {
    if (chats.isEmpty) {
      return Text("Chargement...");
    }

    return Column(children: chats);
  }
}
