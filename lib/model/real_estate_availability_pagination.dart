part of swagger.api;

class RealEstateAvailabilityPagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<RealEstateAvailability> list = [];
  
  RealEstateAvailabilityPagination();

  @override
  String toString() {
    return 'RealEstateAvailabilityPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  RealEstateAvailabilityPagination.fromJson(Map<String, dynamic> json) {
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
      RealEstateAvailability.listFromJson(json['list'])
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

  static List<RealEstateAvailabilityPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstateAvailabilityPagination>() : json.map((value) => new RealEstateAvailabilityPagination.fromJson(value)).toList();
  }

  static Map<String, RealEstateAvailabilityPagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstateAvailabilityPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstateAvailabilityPagination.fromJson(value));
    }
    return map;
  }
}

