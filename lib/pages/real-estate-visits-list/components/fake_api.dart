import 'package:ynov_immo/api.dart';
import 'package:flutter/foundation.dart';

class FakeApi {
  List<User> users;
  List<RealEstate> realEstates;
  List<RealEstateVisit> realEstatesVisits;
  List<RealEstateImage> realEstatesImages;

  FakeApi() {
    initFakeData();
  }

  initFakeData() {
    initFakeUsers();
    initFakeRealEstates();
    initFakeRealEstatesVisits();
    initFakeRealEstateImages();
  }

  initFakeRealEstateImages() {
    realEstatesImages = [];
    RealEstateImage im1 = RealEstateImage(
        id: 2,
        idRealEstate: 1,
        url:
            "https://upload.wikimedia.org/wikipedia/commons/5/55/Bordeaux_Bourse_R01.jpg");
    RealEstateImage im2 = RealEstateImage(
        id: 3,
        idRealEstate: 1,
        url:
        "https://cdn.kactus.com/pictures/000/127/793/large/bordeaux_palais_de_la_bourse_conference.jpg?1539073270");
    RealEstateImage im3 = RealEstateImage(
        id: 4,
        idRealEstate: 1,
        url:
        "https://bordeaux-evenements.com/wp-content/uploads/2020/08/organiser-seminaire-palais-bourse-bordeaux.jpeg");
    RealEstateImage im4 = RealEstateImage(
        id: 5,
        idRealEstate: 3,
        url:
        "https://cdn.radiofrance.fr/s3/cruiser-production/2016/05/b4c228b2-f61c-49af-b3c3-6bdbf6b06f1e/870x489_maxnewsworldfour037905.jpg");
    RealEstateImage im5 = RealEstateImage(
        id: 6,
        idRealEstate: 3,
        url:
        "https://www.laciteduvin.com/sites/default/files/crt_0.jpg");
    RealEstateImage im6 = RealEstateImage(
        id: 7,
        idRealEstate: 3,
        url:
        "https://img.aws.la-croix.com/2016/05/31/1200764032/Une-structure-unique-forme-vigne-pour-evoquer-fois-tournant-dans-verre-remous-Garonne_0_730_487.jpg");

    realEstatesImages.addAll([im6, im5, im4, im3, im2, im1]);
  }

  initFakeRealEstatesVisits() {
    realEstatesVisits = [];
    // Juppé le booker(8) fait visiter à
    // Etchebest(9) la Cité du Vin le 18/02 de 15h à 16h
    // (qui appartient à Chaban (5))
    RealEstateVisit visit1 = RealEstateVisit(
      id: 2,
      idRealEstate: 3,
      idBooker: 8,
      idVisitor: 9,
      startDate: DateTime.parse("2021-02-18T15:00:00.000Z"),
      endDate: DateTime.parse("2021-02-18T16:00:00.000Z"),
      startTime: DateTime.parse("2021-02-18T15:00:00.000Z"),
      endTime: DateTime.parse("2021-02-18T16:00:00.000Z"),
      bookerIsReady: 0,
      visitorIsReady: 0,
    );

    // Juppé le booker(8) fait visiter à
    // John(4) la Cité du Vin le 18/02 de 14h à 15h
    // (qui appartient à Chaban (5))
    RealEstateVisit visit2 = RealEstateVisit(
      id: 3,
      idRealEstate: 3,
      idBooker: 8,
      idVisitor: 4,
      startDate: DateTime.parse("2021-02-18T14:00:00.000Z"),
      endDate: DateTime.parse("2021-02-18T15:00:00.000Z"),
      startTime: DateTime.parse("2021-02-18T14:00:00.000Z"),
      endTime: DateTime.parse("2021-02-18T15:00:00.000Z"),
      bookerIsReady: 0,
      visitorIsReady: 0,
    );

    // Juppé le booker(8) fait visiter à
    // Guillaume(3) le palais de la Bourse le 05/02 de 15h à 16h
    // (qui appartient à John(4))
    RealEstateVisit visit3 = RealEstateVisit(
      id: 4,
      idRealEstate: 1,
      idBooker: 8,
      idVisitor: 3,
      startDate: DateTime.parse("2021-02-06T00:00:00.000Z"),
      endDate: DateTime.parse("2021-02-06T01:00:00.000Z"),
      startTime: DateTime.parse("2021-02-06T00:00:00.000Z"),
      endTime: DateTime.parse("2021-02-06T01:00:00.000Z"),
      bookerIsReady: 0,
      visitorIsReady: 0,
    );
    // Juppé le booker(8) fait visiter à
    // Etchebest(9) le palais de la Bourse le 05/02 de 16h à 17h
    // (qui appartient à John(4))
    RealEstateVisit visit4 = RealEstateVisit(
      id: 5,
      idRealEstate: 1,
      idBooker: 8,
      idVisitor: 9,
      startDate: DateTime.parse("2021-02-06T16:00:00.000Z"),
      endDate: DateTime.parse("2021-02-06T17:00:00.000Z"),
      startTime: DateTime.parse("2021-02-06T16:00:00.000Z"),
      endTime: DateTime.parse("2021-02-06T17:00:00.000Z"),
      bookerIsReady: 0,
      visitorIsReady: 0,
    );

    realEstatesVisits.addAll([visit1, visit2, visit3, visit4]);
  }

  initFakeRealEstates() {
    realEstates = [];
    RealEstate palaisBourse = RealEstate(
        id: 1,
        idUser: 4,
        accroche:
            "Le palais de la Bourse abrite la CCI de Bordeaux, le tribunal de commerce et le corps consulaire.",
        type: "building",
        nbRooms: 21,
        nbBedroom: 9,
        description:
            "Situé entre la place de la Bourse, le quai du Maréchal-Lyautey et la place Jean-Jaurès, le bâtiment sert aussi d'espace de congrès, géré par la CCI, avec 150 manifestations accueillies annuellement",
        size: 2600,
        price: 4000000,
        address: "17, Place de la Bourse",
        zipCode: "33000",
        city: "Bordeaux",
        latitude: "44,841843",
        longitude: "-0,570655",
        energyClass: "D",
        gesClass: "E",
        hasGarden: 0,
        hasExposedStone: 1,
        hasCimentTiles: 0,
        hasParquetFloor: 0);
    RealEstate citeDuVin = RealEstate(
        id: 3,
        idUser: 5,
        accroche: "La Cité du Vin",
        type: "building",
        nbRooms: 42,
        nbBedroom: 2,
        description:
            "La Cité du Vin est un lieu d'exposition sur le thème du vin situé à Bordeaux (quartier de Bacalan).",
        size: 13350,
        price: 2300000,
        address: "134 quai de Bacalan",
        zipCode: "33000",
        city: "Bordeaux",
        latitude: "44,86217",
        longitude: "-0,549987",
        energyClass: "C",
        gesClass: "B",
        hasGarden: 1,
        hasExposedStone: 0,
        hasCimentTiles: 0,
        hasParquetFloor: 1);
    realEstates.addAll([palaisBourse, citeDuVin]);
  }

  initFakeUsers() {
    users = [];
    User user1 = User(
      id: 3,
      email: "guillaume.hanotel@ynov.com",
      firstName: "Guillaume",
      lastName: "HANOTEL",
    );
    User user2 = User(
        id: 4,
        email: "john.clafoutis@yopmail.fr",
        firstName: "John",
        lastName: "Clafoutis",
        address: "17, Place de la Bourse",
        zipCode: "33000",
        city: "Bordeaux",
        latitude: "44,841843",
        longitude: "-0,570655");
    User user3 = User(
        id: 5,
        email: "jacques.chabandelmas@yopmail.fr",
        firstName: "Jacques",
        lastName: "Chaban-Delmas",
        address: "40, rue du Sablonat",
        zipCode: "33000",
        city: "Bordeaux",
        latitude: "44,818225",
        longitude: "-0,574115");
    User user4 = User(
        id: 8,
        email: "alain.juppe@yopmail.fr",
        firstName: "Alain",
        lastName: "Juppé",
        address: "27, Impasse des Tanneries",
        zipCode: "33000",
        city: "Bordeaux");
    User user5 = User(
        id: 9,
        email: "philippe.etchebest@yopmail.fr",
        firstName: "Philippe",
        lastName: "Etchebest",
        address: "2, Place de la Comédie",
        zipCode: "33000",
        city: "Bordeaux");
    users.addAll([user1, user2, user3, user4, user5]);
  }
}
