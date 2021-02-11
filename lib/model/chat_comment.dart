part of swagger.api;

class ChatComment {
  /* Id du commentaire */
  int id = null;
  
/* Id de la conversation */
  int idChat = null;
  
/* Id de l'utilisateur qui a écrit le commentaire */
  int idUser = null;
  
/* Commentaire */
  String comment = null;
  
/* Date du commentaire */
  DateTime date = null;
  
  ChatComment();

  @override
  String toString() {
    return 'ChatComment[id=$id, idChat=$idChat, idUser=$idUser, comment=$comment, date=$date, ]';
  }

  ChatComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    idChat =
        json['id_chat']
    ;
    idUser =
        json['id_user']
    ;
    comment =
        json['comment']
    ;
    date = json['date'] == null ? null : DateTime.parse(json['date']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_chat': idChat,
      'id_user': idUser,
      'comment': comment,
      'date': date == null ? '' : date.toUtc().toIso8601String()
     };
  }

  static List<ChatComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChatComment>() : json.map((value) => new ChatComment.fromJson(value)).toList();
  }

  static Map<String, ChatComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChatComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChatComment.fromJson(value));
    }
    return map;
  }
}

