import 'package:flutter/material.dart';
import 'package:ynov_immo/api.dart';
import 'package:ynov_immo/pages/sell/components/interfaces/sell_form.dart';
import 'package:ynov_immo/pages/sell/components/miscellaeneous/separator.dart';
import 'package:ynov_immo/pages/sell/components/page_title.dart';
import 'package:ynov_immo/pages/sell/components/property_description.dart';
import 'package:ynov_immo/pages/sell/components/property_sell.dart';
import 'package:ynov_immo/pages/sell/components/search.dart';
import 'package:ynov_immo/pages/sell/components/property_images/property_images.dart';
import 'package:ynov_immo/pages/sell/components/style/common_style.dart';
import 'package:http/http.dart' as http;

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  RealEstateApi _realEstateApi = new RealEstateApi();
  RealEstateImageApi _realEstateImageApi = new RealEstateImageApi();

  SellForm sellForm = new SellForm();

  bool isPostFormInvalid = false;

  callback(String variable, dynamic value) {
    setState(() {
      sellForm[variable] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(25.0),
        child: ListView(
          children: [
            PageTitle(),
            PropertyDescription(setParentState: callback),
            Separator(),
            Text("Adresse", style: CommonStyle.text()),
            SearchPage(setParentState: callback),
            Separator(),
            PropertyImages(setParentState: callback),
            Separator(),
            PropertySell(setParentState: callback),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: TextButton(
                style: TextButton.styleFrom(
                    side: BorderSide(color: Colors.black, width: 2),
                    // primary: Colors.black,
                    textStyle: TextStyle(
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.deepOrange,
                    padding: EdgeInsets.all(8.0),
                    minimumSize: Size(150, 50)),
                onPressed: _submitSellForm,
                child: Text(
                  "Mettre en vente",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'RobotoMono',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            if (isPostFormInvalid)
              (Text(
                "Une erreur est survenu pendant l'envoi de vos données, veuillez réessayer plus tard ou contacter un administrateur",
                style: CommonStyle.errorText(),
                textAlign: TextAlign.center,
              )),
            Separator()
          ],
        ));
  }

  void _submitSellForm() async {
    final ApiResponse response = await _realEstateApi.realEstatePost(
        _mapSellFormToRealEstateModel(), true);

    if (response.code == 0) {
      setState(() {
        isPostFormInvalid = true;
      });
    } else {
      // Tout s'est bien passé, la variable "msg" nous retourne l'id de la propriété crée
      final int id = int.parse(response.msg);

      // Envoyer les photos une par une car on ne peut pas envoyer de liste
      for (String imageURL in sellForm.imagesURL) {
        final http.Response response = await http.get(imageURL);
        if (response.statusCode == 200) {
          await _realEstateImageApi
              .realEstateImagePost(_mapUrlToRealEstateImageModel(id, imageURL));
        }
      }
    }
  }

  RealEstate _mapSellFormToRealEstateModel() {
    RealEstate realEstate = new RealEstate();
    realEstate.id = null;
    realEstate.idUser = 1;
    realEstate.accroche = sellForm.catchPhrase;
    realEstate.type = sellForm.type;
    realEstate.nbRooms = sellForm.nbPiece;
    realEstate.nbBedroom = sellForm.nbChambre;
    realEstate.description = sellForm.description;
    realEstate.size = sellForm.surface;
    realEstate.price = sellForm.prix;
    realEstate.address = sellForm.address;
    realEstate.zipCode = sellForm.zipCode;
    realEstate.city = sellForm.city;
    realEstate.latitude = sellForm.latitude;
    realEstate.longitude = sellForm.longitude;
    realEstate.energyClass = sellForm.energie;
    realEstate.gesClass = sellForm.ges;
    realEstate.hasGarden = sellForm.garden ? 1 : 0;
    realEstate.hasExposedStone = sellForm.exposedStone ? 1 : 0;
    realEstate.hasCimentTiles = sellForm.cimentTiles ? 1 : 0;
    realEstate.hasParquetFloor = sellForm.parquetFloor ? 1 : 0;
    return realEstate;
  }

  RealEstateImage _mapUrlToRealEstateImageModel(int idRealEstate, String url) {
    RealEstateImage realEstateImage = new RealEstateImage();
    realEstateImage.id = null;
    realEstateImage.idRealEstate = idRealEstate;
    realEstateImage.url = url;
    return realEstateImage;
  }
}
