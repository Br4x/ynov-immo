part of swagger.api;

class RealEstateFeedbackPagination {
  /* json repose code */
  int code = null;
  
/* total numbers */
  int total = null;
  
/* offset */
  int offset = null;
  
/* limit */
  int limit = null;
  

  List<RealEstateFeedback> list = [];
  
  RealEstateFeedbackPagination();

  @override
  String toString() {
    return 'RealEstateFeedbackPagination[code=$code, total=$total, offset=$offset, limit=$limit, list=$list, ]';
  }

  RealEstateFeedbackPagination.fromJson(Map<String, dynamic> json) {
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
      RealEstateFeedback.listFromJson(json['list'])
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

  static List<RealEstateFeedbackPagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstateFeedbackPagination>() : json.map((value) => new RealEstateFeedbackPagination.fromJson(value)).toList();
  }

  static Map<String, RealEstateFeedbackPagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstateFeedbackPagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstateFeedbackPagination.fromJson(value));
    }
    return map;
  }
}

