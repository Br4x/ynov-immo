part of swagger.api;

class User {
  /* Id de l'utilisateur */
  int id = null;
  
/* Email de l'utilisateur qui sert aussi de login */
  String email = null;
  
/* Mot de passe de l'utilisateur */
  String password = null;
  
/* Url de l'avatar de l'utilisateur */
  String avatar = null;
  
/* Prénom de l'utilisateur */
  String firstName = null;
  
/* Nom de l'utilisateur */
  String lastName = null;
  
/* Adresse */
  String address = null;
  
/* Code postal */
  String zipCode = null;
  
/* Ville */
  String city = null;
  
/* Latitude */
  String latitude = null;
  
/* Longitude */
  String longitude = null;
  
  User();

  @override
  String toString() {
    return 'User[id=$id, email=$email, password=$password, avatar=$avatar, firstName=$firstName, lastName=$lastName, address=$address, zipCode=$zipCode, city=$city, latitude=$latitude, longitude=$longitude, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    email =
        json['email']
    ;
    password =
        json['password']
    ;
    avatar =
        json['avatar']
    ;
    firstName =
        json['first_name']
    ;
    lastName =
        json['last_name']
    ;
    address =
        json['address']
    ;
    zipCode =
        json['zip_code']
    ;
    city =
        json['city']
    ;
    latitude =
        json['latitude']
    ;
    longitude =
        json['longitude']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'avatar': avatar,
      'first_name': firstName,
      'last_name': lastName,
      'address': address,
      'zip_code': zipCode,
      'city': city,
      'latitude': latitude,
      'longitude': longitude
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}

