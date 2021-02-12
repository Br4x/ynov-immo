part of swagger.api;

class RealEstate {
  /* Id du bien */
  int id = null;

/* Id du proprietaire */
  int idUser = null;

/* Phrase d'accroche (max 100 caractères) */
  String accroche = null;

/* Type de bien ('apartment','house','vacant_lot','parking','loft','castle','building') */
  String type = null;

/* Nombre de pièce */
  int nbRooms = null;

/* Nombre de chambre */
  int nbBedroom = null;

/* Description */
  String description = null;

/* Superficie (en entier) */
  int size = null;

/* Prix du bien */
  int price = null;

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

/* Classe d'énergie */
  String energyClass = null;

/* Classe GES */
  String gesClass = null;

/* A un jardin */
  int hasGarden = null;

/* A des pierres apparentes */
  int hasExposedStone = null;

/* A des carreaux de ciments */
  int hasCimentTiles = null;

/* A du parquet au sol */
  int hasParquetFloor = null;

  RealEstate(
      {int id,
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
      int hasParquetFloor})
      : id = id,
        idUser = idUser,
        accroche = accroche,
        type = type,
        nbRooms = nbRooms,
        nbBedroom = nbBedroom,
        description = description,
        size = size,
        price = price,
        address = address,
        zipCode = zipCode,
        city = city,
        latitude = latitude,
        longitude = longitude,
        energyClass = energyClass,
        gesClass = gesClass,
        hasGarden = hasGarden,
        hasExposedStone = hasExposedStone,
        hasCimentTiles = hasCimentTiles,
        hasParquetFloor = hasParquetFloor;

  @override
  String toString() {
    return 'RealEstate[id=$id, idUser=$idUser, accroche=$accroche, type=$type, nbRooms=$nbRooms, nbBedroom=$nbBedroom, description=$description, size=$size, price=$price, address=$address, zipCode=$zipCode, city=$city, latitude=$latitude, longitude=$longitude, energyClass=$energyClass, gesClass=$gesClass, hasGarden=$hasGarden, hasExposedStone=$hasExposedStone, hasCimentTiles=$hasCimentTiles, hasParquetFloor=$hasParquetFloor, ]';
  }

  RealEstate.fromJson(Map<String, dynamic> json) {
    json = json['data'];
    if (json == null) return;
    id = json['id'];
    idUser = json['id_user'];
    accroche = json['accroche'];
    type = json['type'];
    nbRooms = json['nb_rooms'];
    nbBedroom = json['nb_bedroom'];
    description = json['description'];
    size = json['size'];
    price = json['price'];
    address = json['address'];
    zipCode = json['zip_code'];
    city = json['city'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    energyClass = json['energy_class'];
    gesClass = json['ges_class'];
    hasGarden = json['has_garden'];
    hasExposedStone = json['has_exposed_stone'];
    hasCimentTiles = json['has_ciment_tiles'];
    hasParquetFloor = json['has_parquet_floor'];
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
    return json == null
        ? new List<RealEstate>()
        : json.map((value) => new RealEstate.fromJson(value)).toList();
  }

  static Map<String, RealEstate> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RealEstate.fromJson(value));
    }
    return map;
  }
}
