part of swagger.api;

class RealEstateImagePagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<RealEstateImage> list = [];
  
  RealEstateImagePagination();

  @override
  String toString() {
    return 'RealEstateImagePagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  RealEstateImagePagination.fromJson(Map<String, dynamic> json) {
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
      RealEstateImage.listFromJson(json['list'])
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

  static List<RealEstateImagePagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstateImagePagination>() : json.map((value) => new RealEstateImagePagination.fromJson(value)).toList();
  }

  static Map<String, RealEstateImagePagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstateImagePagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstateImagePagination.fromJson(value));
    }
    return map;
  }
}

