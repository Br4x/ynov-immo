part of swagger.api;

class RealEstateFeedback {
  /* Id du feedback */
  int id = null;
  
/* Id de l'utilisateur */
  int idUser = null;
  
/* Id du bien */
  int idRealEstate = null;
  
/* Feedback */
  String feedback = null;
  
/* Date (YYYY-mm-dd hh:mm:ss) */
  DateTime date = null;
  
  RealEstateFeedback();

  @override
  String toString() {
    return 'RealEstateFeedback[id=$id, idUser=$idUser, idRealEstate=$idRealEstate, feedback=$feedback, date=$date, ]';
  }

  RealEstateFeedback.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    idUser =
        json['id_user']
    ;
    idRealEstate =
        json['id_real_estate']
    ;
    feedback =
        json['feedback']
    ;
    date = json['date'] == null ? null : DateTime.parse(json['date']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_user': idUser,
      'id_real_estate': idRealEstate,
      'feedback': feedback,
      'date': date == null ? '' : date.toUtc().toIso8601String()
     };
  }

  static List<RealEstateFeedback> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstateFeedback>() : json.map((value) => new RealEstateFeedback.fromJson(value)).toList();
  }

  static Map<String, RealEstateFeedback> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstateFeedback>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstateFeedback.fromJson(value));
    }
    return map;
  }
}

