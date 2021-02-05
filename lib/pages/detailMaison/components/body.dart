import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/home-screen.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/pages/details/components/item_image.dart';
import 'package:ynov_immo/pages/details/components/order_button.dart';
import 'package:ynov_immo/pages/details/components/title_price_rating.dart';

class RealEstateData {
    final int id;
    final int idUser;
    final String accroche;
    final String type;
    final int nbRooms;
    final int nbBedroom;
    final String description;
    final int size;
    final int price;
    final String address;
    final String zipCode;
    final String city;
    final String latitude;
    final String longitude;
    final String energyClass;
    final String gesClass;
    final int hasGarden;
    final int hasExposedStone;
    final int hasCimentTiles;
    final int hasParquetFloor;

    RealEstateData(this.id, this.idUser, this.accroche, this.type, this.nbRooms, this.nbBedroom, this.description, this.size, this.price,
        this.address, this.zipCode, this.city, this.latitude, this.longitude, this.energyClass, this.gesClass, this.hasGarden, this.hasExposedStone,
        this.hasCimentTiles, this.hasParquetFloor
        );
}

class Body extends StatelessWidget {
  final RealEstateData realEstateData;

  Body({Key key, @required this.realEstateData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(realEstateData: realEstateData),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  final RealEstateData realEstateData;

  ItemInfo({Key key, @required this.realEstateData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: realEstateData.address),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            rating: 4,
            price: 15,
            // onRatingChanged: (value) {},
          ),
          Text(realEstateData.description,
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
