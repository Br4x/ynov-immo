part of swagger.api;

class RealEstateVisit {
  /* Id de la visite */
  int id = null;

/* Id du bien */
  int idRealEstate = null;

/* Id du booker */
  int idBooker = null;

/* Id du visiteur */
  int idVisitor = null;

/* Date de début (YYYY-mm-dd) */
  DateTime startDate = null;

/* Date de fin (YYYY-mm-dd) */
  DateTime endDate = null;

/* Heure de début (hh:mm) */
  DateTime startTime = null;

/* Heure de fin (hh:mm) */
  DateTime endTime = null;

/* Le booker est prêt ? */
  int bookerIsReady = null;

/* Les visiteurs sont prêts ? */
  int visitorIsReady = null;

  RealEstateVisit(
      {int id,
      int idRealEstate,
      int idBooker,
      int idVisitor,
      DateTime startDate,
      DateTime endDate,
      DateTime startTime,
      DateTime endTime,
      int bookerIsReady,
      int visitorIsReady})
      : id = id,
        idRealEstate = idRealEstate,
        idBooker = idBooker,
        idVisitor = idVisitor,
        startDate = startDate,
        endDate = endDate,
        startTime = startTime,
        endTime = endTime,
        bookerIsReady = bookerIsReady,
        visitorIsReady = visitorIsReady;

  @override
  String toString() {
    return 'RealEstateVisit[id=$id, idRealEstate=$idRealEstate, idBooker=$idBooker, idVisitor=$idVisitor, startDate=$startDate, endDate=$endDate, startTime=$startTime, endTime=$endTime, bookerIsReady=$bookerIsReady, visitorIsReady=$visitorIsReady, ]';
  }

  RealEstateVisit.fromJson(Map<String, dynamic> json) {
    json = json['data'];
    if (json == null) return;
    id = json['id'];
    idRealEstate = json['id_real_estate'];
    idBooker = json['id_booker'];
    idVisitor = json['id_visitor'];
    startDate =
        json['start_date'] == null ? null : DateTime.parse(json['start_date']);
    endDate =
        json['end_date'] == null ? null : DateTime.parse(json['end_date']);
    startTime =
        json['start_time'] == null ? null : DateTime.parse(json['start_time']);
    endTime =
        json['end_time'] == null ? null : DateTime.parse(json['end_time']);
    bookerIsReady = json['booker_is_ready'];
    visitorIsReady = json['visitor_is_ready'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_real_estate': idRealEstate,
      'id_booker': idBooker,
      'id_visitor': idVisitor,
      'start_date':
          startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'end_date': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'start_time':
          startTime == null ? '' : startTime.toUtc().toIso8601String(),
      'end_time': endTime == null ? '' : endTime.toUtc().toIso8601String(),
      'booker_is_ready': bookerIsReady,
      'visitor_is_ready': visitorIsReady
    };
  }

  static List<RealEstateVisit> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<RealEstateVisit>()
        : json.map((value) => new RealEstateVisit.fromJson(value)).toList();
  }

  static Map<String, RealEstateVisit> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstateVisit>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RealEstateVisit.fromJson(value));
    }
    return map;
  }
}
