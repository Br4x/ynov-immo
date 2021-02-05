import 'package:flutter/material.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/pages/detailMaison/components/app_bar.dart';
import 'package:ynov_immo/pages/detailMaison/components/body.dart';
import 'package:ynov_immo/api.dart';

class DetailsScreenHouse extends StatelessWidget {
  getRealEstateData () async {
    var apiInstance = new RealEstateApi();
    try {
      var result = await apiInstance.realEstateIdGet(1);
      return result;
    } catch (e) {
      return "Exception when calling RealEstateApi->realEstateIdGet: $e\n";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: FutureBuilder(
        future: getRealEstateData(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            // while data is loading:
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            // data loaded
            return Scaffold(
              body: Body(realEstateData: RealEstateData(snapshot.data.id, snapshot.data.idUser, snapshot.data.accroche,
                  snapshot.data.type, snapshot.data.nbRooms, snapshot.data.nbBedroom, snapshot.data.description,
                  snapshot.data.size, snapshot.data.price, snapshot.data.address, snapshot.data.zipCode, snapshot.data.city,
                  snapshot.data.latitude, snapshot.data.longitude, snapshot.data.energyClass, snapshot.data.gesClass, snapshot.data.hasGarden,
                  snapshot.data.hasExposedStone, snapshot.data.hasCimentTiles, snapshot.data.hasParquetFloor)),
            );
          }
        },
      ),
    );
  }
}
