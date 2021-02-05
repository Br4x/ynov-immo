import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong/latlong.dart";
import 'package:ynov_immo/constants.dart';

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
    return SingleChildScrollView(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[

          CarouselSlider(
            options: CarouselOptions(
                height: 250.0,
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
            ),
            items: [1,2,3,4,5].map((i) { //todo url api route /real-estate-image
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.transparent
                      ),
                      child: Image.network('https://picsum.photos/250?image=9')
                  );
                },
              );
            }).toList(),
          ),
          Row( //todo info /real-estate
              children: <Widget>[
                Text(
                  realEstateData.type,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
                ),

                SizedBox(width: 20),

                Text(
                  '18000€',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.red),
                ),
              ],
          ),

          Row(
            children: <Widget>[
              Text(
                'Critères :',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
              ),
            ]),

            Row(
                children: <Widget>[

                  cirteria(name: "jardin",icon: Icons.location_on, ispresent: false),
                  cirteria(name: "jardin",icon: Icons.location_on, ispresent: false),
                  cirteria(name: "jardin",icon: Icons.location_on, ispresent: false),
                  cirteria(name: "jardin",icon: Icons.location_on, ispresent: true),
                  cirteria(name: "jardin",icon: Icons.location_on, ispresent: true),
                  cirteria(name: "jardin",icon: Icons.location_on, ispresent: true),
                  cirteria(name: "jardin",icon: Icons.location_on, ispresent: false),


                ]
            ),
            Container(
            // here
            height: 500,
            alignment: Alignment.centerLeft,
            child:FlutterMap(
              options: MapOptions(
                center: LatLng(double.parse(realEstateData.latitude.replaceAll(",", ".")),  double.parse(realEstateData.longitude.replaceAll(",", "."))),
                zoom: 13.0,
              ),
              layers: [
                TileLayerOptions(
                    urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c']
                ),
                MarkerLayerOptions(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(double.parse(realEstateData.latitude.replaceAll(",", ".")),  double.parse(realEstateData.longitude.replaceAll(",", "."))),
                      builder: (ctx) =>
                          Container(
                            child: Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                          ),
                    ),
                  ],
                ),
              ],
            ),
            ),






          ],
        ),



    );
  }

  Column cirteria({String name, IconData icon, bool ispresent}) {
    if(ispresent){
      return Column(
          children: <Widget>[
            Icon(
              icon, //Icons.location_on,
              color: ksecondaryColor,
            ),
            Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.green),
            ),

          ]
      );
    }else{
      return Column(

          children: <Widget>[
            Icon(
              icon, //Icons.location_on,
              color: ksecondaryColor,
            ),
            Text(
              name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),

          ]
      );
    }
  }
}
