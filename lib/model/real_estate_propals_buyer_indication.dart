part of swagger.api;

class RealEstatePropalsBuyerIndication {
  /* Id de l'indication */
  int id = null;
  
/* Id de la proposition */
  int idPropal = null;
  
/* Id de l'acheteur */
  int idBuyer = null;
  
/* Id du vendeur */
  int idVendor = null;
  
/* a le total en cash ? */
  int hasTotalInCash = null;
  
/* a un apport financier ? */
  int hasFinancialSupport = null;
  
/* a un apport financier important ? (>30% du bien) */
  int hasBigFinancialSupport = null;
  
/* a un apport financier très important ? (> 70% du bien) */
  int hasVeryBigFinancialSupport = null;
  
/* veut une vente longue ? (+ de 6 mois) */
  int wantALongSell = null;
  
  RealEstatePropalsBuyerIndication();

  @override
  String toString() {
    return 'RealEstatePropalsBuyerIndication[id=$id, idPropal=$idPropal, idBuyer=$idBuyer, idVendor=$idVendor, hasTotalInCash=$hasTotalInCash, hasFinancialSupport=$hasFinancialSupport, hasBigFinancialSupport=$hasBigFinancialSupport, hasVeryBigFinancialSupport=$hasVeryBigFinancialSupport, wantALongSell=$wantALongSell, ]';
  }

  RealEstatePropalsBuyerIndication.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    idPropal =
        json['id_propal']
    ;
    idBuyer =
        json['id_buyer']
    ;
    idVendor =
        json['id_vendor']
    ;
    hasTotalInCash =
        json['has_total_in_cash']
    ;
    hasFinancialSupport =
        json['has_financial_support']
    ;
    hasBigFinancialSupport =
        json['has_big_financial_support']
    ;
    hasVeryBigFinancialSupport =
        json['has_very_big_financial_support']
    ;
    wantALongSell =
        json['want_a_long_sell']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_propal': idPropal,
      'id_buyer': idBuyer,
      'id_vendor': idVendor,
      'has_total_in_cash': hasTotalInCash,
      'has_financial_support': hasFinancialSupport,
      'has_big_financial_support': hasBigFinancialSupport,
      'has_very_big_financial_support': hasVeryBigFinancialSupport,
      'want_a_long_sell': wantALongSell
     };
  }

  static List<RealEstatePropalsBuyerIndication> listFromJson(List<dynamic> json) {
    return json == null ? new List<RealEstatePropalsBuyerIndication>() : json.map((value) => new RealEstatePropalsBuyerIndication.fromJson(value)).toList();
  }

  static Map<String, RealEstatePropalsBuyerIndication> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RealEstatePropalsBuyerIndication>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RealEstatePropalsBuyerIndication.fromJson(value));
    }
    return map;
  }
}

