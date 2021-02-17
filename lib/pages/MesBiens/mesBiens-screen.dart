import 'package:flutter/material.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/api.dart';
import 'package:ynov_immo/pages/MesBiens/components/MyCard.dart';

void goBack() {

  print('goBack function.');

}

void add() {

  print('Add function.');
  // fetchData();

}

class MesBiens extends StatelessWidget {
  @override
    Widget build(BuildContext context) {

      var apiInstance = new RealEstateApi();

      return Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(margin: EdgeInsets.only(top: MARGIN_SIZE), width: 30,child: IconButton(icon: Icon(Icons.navigate_before), tooltip: 'back', onPressed: () { goBack(); },),),
                  Container(
                    margin: EdgeInsets.only(top: MARGIN_SIZE),
                    width: MediaQuery.of(context).size.width - (MARGIN_SIZE * 4), 
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center, 
                      children: [
                        Text(
                          'Mes biens en vente', 
                          style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 22
                          )
                        )
                      ]
                    )
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(MARGIN_SIZE),
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                          child: FutureBuilder(
                            future: apiInstance.realEstateGet(),
                            builder: (context, snapshot){
                              switch(snapshot.connectionState){
                                case ConnectionState.waiting:
                                  return Center(
                                    child: CircularProgressIndicator(),
                                    );
                                  break;
                                case ConnectionState.done:
                                    if(snapshot.hasError){
                                      print(snapshot.error.toString());
                                      return Center(
                                        child: Text(
                                          "Une erreur est survenue."
                                        ),
                                      );
                                    }

                                    if(snapshot.hasData){
                                      List<RealEstate> realEstates = snapshot.data[0].list;
                                        if(realEstates.isEmpty) {
                                          return Center(
                                            child: Text(
                                                "Il n'y a pas de biens en vente."
                                            ),
                                          );
                                        } else {
                                          return Container(
                                            child: ListView.builder(
                                              itemCount: realEstates.length,
                                              itemBuilder: (context, index){
                                                return MyCard(element: realEstates[index]);
                                                // return Text('new item ' + index.toString() + ' - ' + realEstates[index].accroche);
                                              },
                                            ),
                                          );
                                        }
                                        } else {
                                          return Container(
                                            child: Text(
                                              "Aucune donnée"
                                            ),
                                          );
                                        }
                                      break;
                              }
                            },
                          )
                        ),
                      ),
                      Container(margin: EdgeInsets.only(top: MARGIN_SIZE), child: IconButton(icon: Icon(Icons.add), tooltip: 'add', onPressed: () { add();},),)
                    ],
                  ),
                ),
            ),
          ],
        ),
      );
    }
}