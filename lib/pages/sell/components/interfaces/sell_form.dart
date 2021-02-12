class SellForm {
  String catchPhrase = "";
  String description = "";
  int surface;
  List<String> imagesURL = [];

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
      case SellFormFields.IMAGES_URL:
        imagesURL = value;
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
  static const String IMAGES_URL = "imagesURL";
}