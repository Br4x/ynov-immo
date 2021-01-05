part of swagger.api;

class RealEstateAvailability {
  /* Id de la disponibilité */
  int id = null;
  
/* Prix de la visite */
  double price = null;
  
/* Date de début */
  DateTime startDate = null;
  
/* Date de fin */
  DateTime endDate = null;
  
/* De  */
  DateTime startTime = null;
  
/* à */
  DateTime endTime = null;
  
  RealEstateAvailability();

  @override
  String toString() {
    return 'RealEstateAvailability[id=$id, price=$price, startDate=$startDate, endDate=$endDate, startTime=$startTime, endTime=$endTime, ]';
  }

  RealEstateAvailability.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    price =
        json['price']
    ;
    startDate = json['start_date'] == null ? null : DateTime.parse(json['start_date']);
    endDate = json['end_date'] == null ? null : DateTime.parse(json['end_date']);
    startTime = json['start_time'] == null ? null : DateTime.parse(json['start_time']);
    endTime = json['end_time'] == null ? null : DateTime.parse(json['end_time']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'price': price,
      'start_date': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'end_date': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'start_time': startTime == null ? '' : startTime.toUtc().toIso8601String(),
      'end_time': endTime == null ? '' : endTime.toUtc().toIso8601String()
     };
  }

  static List<RealEstateAvailability> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstateAvailability>() : json.map((value) => new RealEstateAvailability.fromJson(value)).toList();
  }

  static Map<String, RealEstateAvailability> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstateAvailability>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstateAvailability.fromJson(value));
    }
    return map;
  }
}

