import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong/latlong.dart" as latLng;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ynov_immo/pages/home/home-screen.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/pages/details/components/item_image.dart';
import 'package:ynov_immo/pages/details/components/order_button.dart';
import 'package:ynov_immo/pages/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

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
                  'Maison de charme',
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
            )
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
