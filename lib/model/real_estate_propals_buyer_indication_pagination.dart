part of swagger.api;

class RealEstatePropalsBuyerIndicationPagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<RealEstatePropalsBuyerIndication> list = [];
  
  RealEstatePropalsBuyerIndicationPagination();

  @override
  String toString() {
    return 'RealEstatePropalsBuyerIndicationPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  RealEstatePropalsBuyerIndicationPagination.fromJson(Map<String, dynamic> json) {
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
      RealEstatePropalsBuyerIndication.listFromJson(json['list'])
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

  static List<RealEstatePropalsBuyerIndicationPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstatePropalsBuyerIndicationPagination>() : json.map((value) => new RealEstatePropalsBuyerIndicationPagination.fromJson(value)).toList();
  }

  static Map<String, RealEstatePropalsBuyerIndicationPagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstatePropalsBuyerIndicationPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstatePropalsBuyerIndicationPagination.fromJson(value));
    }
    return map;
  }
}

