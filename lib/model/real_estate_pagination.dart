part of swagger.api;

class RealEstatePagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<RealEstate> list = [];
  
  RealEstatePagination();

  @override
  String toString() {
    return 'RealEstatePagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  RealEstatePagination.fromJson(Map<String, dynamic> json) {
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
      RealEstate.listFromJson(json['data']);
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

  static List<RealEstatePagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstatePagination>() : json.map((value) => new RealEstatePagination.fromJson(value)).toList();
  }

  static Map<String, RealEstatePagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstatePagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstatePagination.fromJson(value));
    }
    return map;
  }
}

