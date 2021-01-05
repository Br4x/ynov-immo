part of swagger.api;

class CitiesDistrict {
  /* Id du quartier */
  int id = null;
  
/* Id de la ville */
  int idCity = null;
  
/* Nom du quartier */
  String name = null;
  
  CitiesDistrict();

  @override
  String toString() {
    return 'CitiesDistrict[id=$id, idCity=$idCity, name=$name, ]';
  }

  CitiesDistrict.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    idCity =
        json['id_city']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_city': idCity,
      'name': name
     };
  }

  static List<CitiesDistrict> listFromJson(List<dynamic> json) {
    return json == null ? new List<CitiesDistrict>() : json.map((value) => new CitiesDistrict.fromJson(value)).toList();
  }

  static Map<String, CitiesDistrict> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CitiesDistrict>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CitiesDistrict.fromJson(value));
    }
    return map;
  }
}

