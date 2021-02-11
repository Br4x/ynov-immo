part of swagger.api;

class ApiResponse {
  
  int code = null;
  

  String msg = null;
  
  ApiResponse();

  @override
  String toString() {
    return 'ApiResponse[code=$code, msg=$msg, ]';
  }

  ApiResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code =
        json['code']
    ;
    msg =
        json['msg']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'msg': msg
     };
  }

  static List<ApiResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiResponse>() : json.map((value) => new ApiResponse.fromJson(value)).toList();
  }

  static Map<String, ApiResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiResponse.fromJson(value));
    }
    return map;
  }
}

