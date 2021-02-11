part of swagger.api;

class City {
  /* Id de la ville */
  int id = null;
  
/* Nom de la ville */
  String name = null;
  
/* Code postal de la ville */
  String zipCode = null;
  
  City();

  @override
  String toString() {
    return 'City[id=$id, name=$name, zipCode=$zipCode, ]';
  }

  City.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    zipCode =
        json['zip_code']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'zip_code': zipCode
     };
  }

  static List<City> listFromJson(List<dynamic> json) {
    return json == null ? new List<City>() : json.map((value) => new City.fromJson(value)).toList();
  }

  static Map<String, City> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, City>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new City.fromJson(value));
    }
    return map;
  }
}

