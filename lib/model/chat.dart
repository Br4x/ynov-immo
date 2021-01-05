part of swagger.api;

class Chat {
  /* Id de la conversation */
  int id = null;
  
/* Id utilisateur 1 */
  int idUser1 = null;
  
/* Id utilisateur 2 */
  int idUser2 = null;
  
  Chat();

  @override
  String toString() {
    return 'Chat[id=$id, idUser1=$idUser1, idUser2=$idUser2, ]';
  }

  Chat.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    idUser1 =
        json['id_user1']
    ;
    idUser2 =
        json['id_user2']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_user1': idUser1,
      'id_user2': idUser2
     };
  }

  static List<Chat> listFromJson(List<dynamic> json) {
    return json == null ? new List<Chat>() : json.map((value) => new Chat.fromJson(value)).toList();
  }

  static Map<String, Chat> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Chat>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Chat.fromJson(value));
    }
    return map;
  }
}

