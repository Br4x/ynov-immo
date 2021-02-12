class SellForm {
  String catchPhrase = "";
  String description = "";
  int surface;
  String address = "";
  String zipCode = "";
  String city = "";
  String latitude = "";
  String longitude = "";


  List<String> imagesURL = [];
  bool garden;
  bool exposedStone;
  bool cimentTiles;
  bool parquetFloor;
  String type;
  int nbPiece;
  int nbChambre;
  String energie;
  String ges;

  void operator []=(String variable, dynamic value) {
    switch (variable) {
      case SellFormFields.CATCH_PHRASE:
        catchPhrase = value;
        break;
      case SellFormFields.DESCRIPTION:
        description = value;
        break;
      case SellFormFields.SURFACE:
        surface = _integerFormatter(value);
        break;
      case SellFormFields.ADDRESS:
        address = value;
        break;
      case SellFormFields.ZIP_CODE:
        zipCode = value;
        break;
      case SellFormFields.CITY:
        city = value;
        break;
      case SellFormFields.LATITUDE:
        latitude = value;
        break;
      case SellFormFields.LONGITUDE:
        longitude = value;
        break;
      case SellFormFields.IMAGES_URL:
        imagesURL = value;
        break;
      case SellFormFields.GARDEN:
        garden = value;
        break;
      case SellFormFields.EXPOSED_STONE:
        exposedStone = value;
        break;
      case SellFormFields.CIMENT_TILES:
        cimentTiles = value;
        break;
      case SellFormFields.PARQUET_FLOOR:
        parquetFloor = value;
        break;
      case SellFormFields.TYPE:
        type = value;
        break;
      case SellFormFields.NB_PIECE:
        nbPiece = _intFormatter(value);
        break;
      case SellFormFields.NB_CHAMBRE:
        nbChambre = _intFormatter(value);
        break;
      case SellFormFields.ENERGIE:
        energie = value;
        break;
      case SellFormFields.GES:
        ges = value;
        break;
    }
  }

  int _integerFormatter(dynamic value) {
    if (value is int) return value;
    if (value is String) {
      // TextInput listeners are called when entering the field
      return value == "" ? null : int.parse(value);
    }
    return null;
  }
}

class SellFormFields {
  static const String CATCH_PHRASE = "catchPhrase";
  static const String DESCRIPTION = "description";
  static const String SURFACE = "surface";
  static const String ADDRESS = "address";
  static const String ZIP_CODE = "zipCode";
  static const String CITY = "city";
  static const String LATITUDE = "latitude";
  static const String LONGITUDE = "longitude";

  static const String IMAGES_URL = "imagesURL";
  static const String GARDEN = "garden";
  static const String EXPOSED_STONE = "exposedStone";
  static const String CIMENT_TILES = "cimentTiles";
  static const String PARQUET_FLOOR = "parquetFloor";
  static const String TYPE = "type";
  static const String NB_PIECE = "nbPiece";
  static const String NB_CHAMBRE = "nbChambre";
  static const String ENERGIE = "energie";
  static const String GES = "ges";
}
