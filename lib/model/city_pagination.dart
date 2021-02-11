part of swagger.api;

class CityPagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<City> list = [];
  
  CityPagination();

  @override
  String toString() {
    return 'CityPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  CityPagination.fromJson(Map<String, dynamic> json) {
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
      City.listFromJson(json['list'])
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

  static List<CityPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<CityPagination>() : json.map((value) => new CityPagination.fromJson(value)).toList();
  }

  static Map<String, CityPagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CityPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CityPagination.fromJson(value));
    }
    return map;
  }
}

