import 'package:ynov_immo/api.dart';

User userMock = User.fromJson({
  'id': 1
});

RealEstate realEstateMock = RealEstate.fromJson({
  'id': 1,
  'accroche': 'Maison de campagne'
});

RealEstateVisit realEstateVisitMock = RealEstateVisit.fromJson({
  'id': 1,
  'id_real_estate': 1,
  'id_booker': 1,
  'id_visitor': 0,
  'start_date': '2021-02-08T23:15:42.141Z',
  'end_date': '2021-02-08T23:15:42.141Z',
  'start_time': '2021-02-08T14:15:42.141Z',
  'end_time': '2021-02-08T16:15:42.141Z',
  'booker_is_ready': 0,
  'visitor_is_ready': 0
});

RealEstateVisit newRealEstateVisitMock = RealEstateVisit.fromJson({
  'id': 1,
  'id_real_estate': 1,
  'id_booker': 1,
  'id_visitor': 0,
  'start_date': '2021-02-08T23:15:42.141Z',
  'end_date': '2021-02-08T23:15:42.141Z',
  'start_time': '2021-02-08T14:15:42.141Z',
  'end_time': '2021-02-08T16:15:42.141Z',
  'booker_is_ready': 0,
  'visitor_is_ready': 0
});