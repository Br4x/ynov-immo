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
  

  List<RealEstateVisit> data = [];
  
  RealEstateVisitPagination(
      int code,
      int total,
      int offset,
      int limit,
      List<RealEstateVisit> data,
      ){
    this.code = code;
    this.total = total;
    this.offset = offset;
    this.limit = limit;
    this.data = data;
  }

  @override
  String toString() {
    return 'RealEstateVisitPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$data, ]';
  }

  RealEstateVisitPagination.fromJson(Map<String, dynamic> json) {
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
    data =
      RealEstateVisit.listFromJson(json['data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'total': total,
      'offset': offset,
      'limit': limit,
      'data': data
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

