import 'package:flutter/material.dart';
import 'package:ynov_immo/api.dart';
import 'package:ynov_immo/pages/sell/components/interfaces/sell_form.dart';
import 'package:ynov_immo/pages/sell/components/miscellaeneous/separator.dart';
import 'package:ynov_immo/pages/sell/components/page_title.dart';
import 'package:ynov_immo/pages/sell/components/property_description.dart';
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
            SearchPage(),
            Separator(),

            PropertyImages(setParentState: callback),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: OutlineButton(
                onPressed: _submitSellForm,
                child: Text("Valider", style: CommonStyle.text()),
                color: Colors.deepOrange
              )
            ),
            Separator()
          ],
        )
    );
  }

  void _submitSellForm() async {
    final ApiResponse response = await _realEstateApi.realEstatePost(_mapSellFormToRealEstateModel(), true);

    if (response.code == 0) {
      print("Une erreur est survenue");
      // Afficher un message d'erreur sur l'interface graphique
    } else {
      // Tout s'est bien passé, la variable "msg" nous retourne l'id de la propriété crée
      final int id = int.parse(response.msg);

      // Envoyer les photos
      for (String imageURL in sellForm.imagesURL) {
        final http.Response response = await http.get(imageURL);
        if (response.statusCode == 200) {
          await _realEstateImageApi.realEstateImagePost(_mapUrlToRealEstateImageModel(id, imageURL));
        }
      }
    }
  }

  RealEstate _mapSellFormToRealEstateModel() {
    RealEstate realEstate = new RealEstate();
    realEstate.id = null;
    realEstate.idUser = 1;
    realEstate.accroche = sellForm.catchPhrase;
    realEstate.type = 'apartment';
    realEstate.nbRooms = 1;
    realEstate.nbBedroom = 1;
    realEstate.description = sellForm.description;
    realEstate.size = sellForm.surface;
    realEstate.price = 1000;
    realEstate.address = "x rue des yyy";
    realEstate.zipCode = "33000";
    realEstate.city = "Bordeaux";
    realEstate.latitude = "45412.23";
    realEstate.longitude = "78452.33";
    realEstate.energyClass = "A";
    realEstate.gesClass = "A";
    realEstate.hasGarden = 0;
    realEstate.hasExposedStone = 0;
    realEstate.hasCimentTiles = 0;
    realEstate.hasParquetFloor = 1;
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
