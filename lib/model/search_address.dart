class Search {
  String type;
  String version;
  List<Features> features;
  String attribution;
  String licence;
  String query;
  int limit;

  Search(
      {this.type,
      this.version,
      this.features,
      this.attribution,
      this.licence,
      this.query,
      this.limit});

  Search.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    version = json['version'];
    if (json['features'] != null) {
      features = new List<Features>();
      json['features'].forEach((v) {
        features.add(new Features.fromJson(v));
      });
    }
    attribution = json['attribution'];
    licence = json['licence'];
    query = json['query'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['version'] = this.version;
    if (this.features != null) {
      data['features'] = this.features.map((v) => v.toJson()).toList();
    }
    data['attribution'] = this.attribution;
    data['licence'] = this.licence;
    data['query'] = this.query;
    data['limit'] = this.limit;
    return data;
  }
}

class Features {
  String type;
  Geometry geometry;
  Properties properties;

  Features({this.type, this.geometry, this.properties});

  Features.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    geometry = json['geometry'] != null
        ? new Geometry.fromJson(json['geometry'])
        : null;
    properties = json['properties'] != null
        ? new Properties.fromJson(json['properties'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    if (this.geometry != null) {
      data['geometry'] = this.geometry.toJson();
    }
    if (this.properties != null) {
      data['properties'] = this.properties.toJson();
    }
    return data;
  }
}

class Geometry {
  String type;
  List<double> coordinates;

  Geometry({this.type, this.coordinates});

  Geometry.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['coordinates'] = this.coordinates;
    return data;
  }
}

class Properties {
  String label;
  double score;
  String housenumber;
  String id;
  String name;
  String postcode;
  String citycode;
  double x;
  double y;
  String city;
  String context;
  String type;
  double importance;
  String street;

  Properties(
      {this.label,
      this.score,
      this.housenumber,
      this.id,
      this.name,
      this.postcode,
      this.citycode,
      this.x,
      this.y,
      this.city,
      this.context,
      this.type,
      this.importance,
      this.street});

  Properties.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    score = json['score'];
    housenumber = json['housenumber'];
    id = json['id'];
    name = json['name'];
    postcode = json['postcode'];
    citycode = json['citycode'];
    // print(json['x']);
    // print(json['x'].runtimeType);
    x = json['x'].toDouble();
    y = json['y'].toDouble();
    city = json['city'];
    context = json['context'];
    type = json['type'];
    importance = json['importance'];
    street = json['street'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['score'] = this.score;
    data['housenumber'] = this.housenumber;
    data['id'] = this.id;
    data['name'] = this.name;
    data['postcode'] = this.postcode;
    data['citycode'] = this.citycode;
    data['x'] = this.x;
    data['y'] = this.y;
    data['city'] = this.city;
    data['context'] = this.context;
    data['type'] = this.type;
    data['importance'] = this.importance;
    data['street'] = this.street;
    return data;
  }
}
