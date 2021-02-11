part of swagger.api;

class CitiesDistrictPagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<CitiesDistrict> list = [];
  
  CitiesDistrictPagination();

  @override
  String toString() {
    return 'CitiesDistrictPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  CitiesDistrictPagination.fromJson(Map<String, dynamic> json) {
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
      CitiesDistrict.listFromJson(json['list'])
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

  static List<CitiesDistrictPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<CitiesDistrictPagination>() : json.map((value) => new CitiesDistrictPagination.fromJson(value)).toList();
  }

  static Map<String, CitiesDistrictPagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CitiesDistrictPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CitiesDistrictPagination.fromJson(value));
    }
    return map;
  }
}

