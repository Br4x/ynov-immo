part of swagger.api;

class ChatPagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<Chat> list = [];
  
  ChatPagination();

  @override
  String toString() {
    return 'ChatPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  ChatPagination.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    total =
        json['total']
    ;
    offset =
        json['offset']
    ;
    limit =
        json['limit']
    ;
    list =
      Chat.listFromJson(json['list'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'total': total,
      'offset': offset,
      'limit': limit,
      'list': list
     };
  }

  static List<ChatPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChatPagination>() : json.map((value) => new ChatPagination.fromJson(value)).toList();
  }

  static Map<String, ChatPagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChatPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChatPagination.fromJson(value));
    }
    return map;
  }
}

