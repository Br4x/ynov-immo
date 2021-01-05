part of swagger.api;

class ChatCommentPagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<ChatComment> list = [];
  
  ChatCommentPagination();

  @override
  String toString() {
    return 'ChatCommentPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  ChatCommentPagination.fromJson(Map<String, dynamic> json) {
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
      ChatComment.listFromJson(json['list'])
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

  static List<ChatCommentPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChatCommentPagination>() : json.map((value) => new ChatCommentPagination.fromJson(value)).toList();
  }

  static Map<String, ChatCommentPagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChatCommentPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChatCommentPagination.fromJson(value));
    }
    return map;
  }
}

