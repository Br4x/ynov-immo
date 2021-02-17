import 'package:flutter/material.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/api.dart';

class MyCard extends StatelessWidget {

  final RealEstate element;

  MyCard({this.element});

  _showPopupMenu(context){
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(200.0, 200.0, 200.0, 200.0),
      items: [
        PopupMenuItem<String>(
            child: Row(
              children: [
                const Icon(Icons.edit),
                const Text(' Editer le bien'),
              ],
            ),
            value: '1'),
        PopupMenuItem<String>(
            child: Row(
              children: [
                const Icon(Icons.calendar_today),
                const Text(' Planifier des visites'),
              ],
            ),
            value: '2'),
        PopupMenuItem<String>(
            child: Row(
              children: [
                const Icon(Icons.comment),
                const Text(' Voir les feedbacks'),
              ],
            ),
            value: '3'),
        PopupMenuItem<String>(
            child: Row(
              children: [
                const Icon(Icons.file_copy),
                const Text(' Voir les propositions'),
              ],
            ),
            value: '4'),
      ],
      elevation: 8.0,
    )
    .then<void>((String itemSelected) {

      if (itemSelected == null) return;

      if(itemSelected == "1"){
        print("Menu 'Editer le bien' selectionné'");
      }else if(itemSelected == "2"){
        print("Menu 'Planifier des visites'");
      }else if(itemSelected =="3"){
        print("Menu 'Voir les feedbacks'");
      } else {
        print("Menu 'Voir les propositions'");
      }

    });
}

  Widget buttonEdit(context) {
    return Center(
      child: IconButton(
        icon: Icon(Icons.edit),
        tooltip: 'edit',
        onPressed: () {
          _showPopupMenu(context);
        },
      ),
    );
  }

  Widget cardHeader(context) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: Container(
            child: Text(
              element.accroche, 
              style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18
              )
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(child: buttonEdit(context))
        )
      ],
    );
  }

  Widget cardBody() {
    var caracs = '';

    if(this.element.hasParquetFloor == 1){
      caracs += ', parquet';
    }

    if(this.element.hasGarden == 1){
      caracs += ', jardin';
    }

    if(this.element.hasCimentTiles == 1){
      caracs += ', carrelage ciment';
    }

    if(this.element.hasExposedStone == 1){
      caracs += ', pierre apparente';
    }

    return Column(
      children: [
        Row(
          children: [
            Text(
              element.city + ', ' + element.zipCode.toString(),
              style: TextStyle(color: Colors.black)
            ),
          ],
        ),
        Row(
          children: [
            Text(
              element.type + caracs,
              style: TextStyle(color: Colors.black)
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: MARGIN_SIZE),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  'Classe énergétique : ' + element.energyClass.toString(),
                  style: TextStyle(color: Colors.grey[600], fontSize: 12)
                ),
              ),
              Expanded(
                flex: 5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      element.price.toString() + '€',
                      style: TextStyle(color: Colors.black)
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ]
    );
  }

  @override
    Widget build(BuildContext context) {

      var apiInstance = new RealEstateImageApi();

      return Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  child: //FadeInImage.assetNetwork(placeholder: 'assets/images/broken.png', image: 'https://upload.wikimedia.org/wikipedia/commons/5/55/Bordeaux_Bourse_R01.jpg',)
                    FutureBuilder(
                      future: apiInstance.realEstateImageGet(),
                      builder: (context, snapshot) {
                        switch(snapshot.connectionState){
                          case ConnectionState.waiting:
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                            break;
                          case ConnectionState.done:
                            if(snapshot.hasError){
                              return Image.asset('assets/images/broken.png');
                            }
                            if(snapshot.hasData){
                              List<RealEstateImage> realEstateImages = snapshot.data[0].list;
                              var idRealEstate = this.element.id;
                              var urlToDisplay = '';
                              realEstateImages.forEach((element) {
                                if(element.idRealEstate == idRealEstate){
                                  urlToDisplay = element.url;
                                  return;
                                }
                              });

                              return FadeInImage.assetNetwork(placeholder: 'assets/images/broken.png', image: urlToDisplay,);
                            }
                            break;
                        }
                      },
                    )
                )
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: MARGIN_SIZE, right: MARGIN_SIZE),
                  child: cardHeader(context),
                )
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: MARGIN_SIZE),
                  padding: EdgeInsets.only(bottom: MARGIN_SIZE, left: MARGIN_SIZE, right: MARGIN_SIZE),
                  child: cardBody(),
                )
              ),
            ],
          ),
        ],
      );
    }
}