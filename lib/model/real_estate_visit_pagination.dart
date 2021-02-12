part of swagger.api;

class RealEstateVisitPagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<RealEstateVisit> list = [];
  
  RealEstateVisitPagination();

  @override
  String toString() {
    return 'RealEstateVisitPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  RealEstateVisitPagination.fromJson(Map<String, dynamic> json) {
    // json = json['data'];
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
      RealEstateVisit.listFromJson(json['list'])
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

  static List<RealEstateVisitPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstateVisitPagination>() : json.map((value) => new RealEstateVisitPagination.fromJson(value)).toList();
  }

  static Map<String, RealEstateVisitPagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstateVisitPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstateVisitPagination.fromJson(value));
    }
    return map;
  }
}

