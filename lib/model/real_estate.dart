part of swagger.api;

class RealEstate {
  /* Id du bien */
  int id;
  
/* Id du proprietaire */
  int idUser;
  
/* Phrase d'accroche (max 100 caractères) */
  String accroche;
  
/* Type de bien ('apartment','house','vacant_lot','parking','loft','castle','building') */
  String type;
  
/* Nombre de pièce */
  int nbRooms;
  
/* Nombre de chambre */
  int nbBedroom;
  
/* Description */
  String description;
  
/* Superficie (en entier) */
  int size;
  
/* Prix du bien */
  int price;
  
/* Adresse */
  String address;
  
/* Code postal */
  String zipCode;
  
/* Ville */
  String city;
  
/* Latitude */
  String latitude;
  
/* Longitude */
  String longitude;
  
/* Classe d'énergie */
  String energyClass;
  
/* Classe GES */
  String gesClass;
  
/* A un jardin */
  int hasGarden;
  
/* A des pierres apparentes */
  int hasExposedStone;
  
/* A des carreaux de ciments */
  int hasCimentTiles;
  
/* A du parquet au sol */
  int hasParquetFloor;

  RealEstate(
  {
    int id,
    int idUser,
    String accroche,
    String type,
    int nbRooms,
    int nbBedroom,
    String description,
    int size,
    int price,
    String address,
    String zipCode,
    String city,
    String latitude,
    String longitude,
    String energyClass,
    String gesClass,
    int hasGarden,
    int hasExposedStone,
    int hasCimentTiles,
    int hasParquetFloor
  }
  ) {
    this.id = id;
    this.idUser = idUser;
    this.accroche = accroche;
    this.type = type;
    this.nbRooms = nbRooms;
    this.nbBedroom = nbBedroom;
    this.description = description;
    this.size = size;
    this.price = price;
    this.address = address;
    this.zipCode = zipCode;
    this.city = city;
    this.latitude = latitude;
    this.longitude = longitude;
    this.energyClass = energyClass;
    this.gesClass = gesClass;
    this.hasGarden = hasGarden;
    this.hasExposedStone = hasExposedStone;
    this.hasCimentTiles = hasCimentTiles;
    this.hasParquetFloor = hasParquetFloor;
  }

  @override
  String toString() {
    return 'RealEstate[id=$id, idUser=$idUser, accroche=$accroche, type=$type, nbRooms=$nbRooms, nbBedroom=$nbBedroom, description=$description, size=$size, price=$price, address=$address, zipCode=$zipCode, city=$city, latitude=$latitude, longitude=$longitude, energyClass=$energyClass, gesClass=$gesClass, hasGarden=$hasGarden, hasExposedStone=$hasExposedStone, hasCimentTiles=$hasCimentTiles, hasParquetFloor=$hasParquetFloor, ]';
  }

  RealEstate.fromJson(Map<String, dynamic> json) {
    json = json['data'];
    if (json == null) return;
    id =
        json['id']
    ;
    idUser =
        json['id_user']
    ;
    accroche =
        json['accroche']
    ;
    type =
        json['type']
    ;
    nbRooms =
        json['nb_rooms']
    ;
    nbBedroom =
        json['nb_bedroom']
    ;
    description =
        json['description']
    ;
    size =
        json['size']
    ;
    price =
        json['price']
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
    energyClass =
        json['energy_class']
    ;
    gesClass =
        json['ges_class']
    ;
    hasGarden =
        json['has_garden']
    ;
    hasExposedStone =
        json['has_exposed_stone']
    ;
    hasCimentTiles =
        json['has_ciment_tiles']
    ;
    hasParquetFloor =
        json['has_parquet_floor']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_user': idUser,
      'accroche': accroche,
      'type': type,
      'nb_rooms': nbRooms,
      'nb_bedroom': nbBedroom,
      'description': description,
      'size': size,
      'price': price,
      'address': address,
      'zip_code': zipCode,
      'city': city,
      'latitude': latitude,
      'longitude': longitude,
      'energy_class': energyClass,
      'ges_class': gesClass,
      'has_garden': hasGarden,
      'has_exposed_stone': hasExposedStone,
      'has_ciment_tiles': hasCimentTiles,
      'has_parquet_floor': hasParquetFloor
     };
  }

  static List<RealEstate> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstate>() : json.map((value) => new RealEstate.fromJson(value)).toList();
  }

  static Map<String, RealEstate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstate.fromJson(value));
    }
    return map;
  }
}

