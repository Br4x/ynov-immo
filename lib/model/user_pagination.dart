part of swagger.api;

class UserPagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<User> list = [];
  
  UserPagination();

  @override
  String toString() {
    return 'UserPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  UserPagination.fromJson(Map<String, dynamic> json) {
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
      User.listFromJson(json['list'])
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

  static List<UserPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserPagination>() : json.map((value) => new UserPagination.fromJson(value)).toList();
  }

  static Map<String, UserPagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPagination.fromJson(value));
    }
    return map;
  }
}

