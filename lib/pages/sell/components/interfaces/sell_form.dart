class SellForm {
  String catchPhrase = "";
  String description = "";
  double surface;

  void operator []=(String variable, dynamic value) {
    switch (variable) {
      case SellFormFields.CATCH_PHRASE:
        catchPhrase = value;
        break;
      case SellFormFields.DESCRIPTION:
        description = value;
        break;
      case SellFormFields.SURFACE:
        surface = _doubleFormatter(value);
        break;
    }
  }

  double _doubleFormatter(dynamic value) {
    if (value is double) return value;
    if (value is String) {
      // TextInput listeners are called when entering the field
      return value == "" ? null : double.parse(value);
    }
    return null;
  }
}

class SellFormFields {
  static const String CATCH_PHRASE = "catchPhrase";
  static const String DESCRIPTION = "description";
  static const String SURFACE = "surface";
}