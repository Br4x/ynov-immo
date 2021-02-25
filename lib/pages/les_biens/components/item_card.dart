import 'dart:ui';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
// import 'package:ynov_immo/constants.dart';

class ItemImage extends StatelessWidget{
  final String imgSrc;
  const ItemImage({
    Key key,
    this.imgSrc,
  }) : super(key : key);

  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      width: size.width * 0.33,
      height: size.height * 0.1,
      fit: BoxFit.fill,
    );
  }
}

class ItemCard extends StatelessWidget {
  final String title, price, localisation, description, picture;
  final Function press;
  const ItemCard({
    Key key,
    this.title,
    this.localisation,
    this.price,
    this.press,
    this.picture,
    this.description,
  }) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      (
                        ItemImage(
                          imgSrc: picture,
                        )
                      ),
                      Row(
                        children: <Widget>[
                          Text(title)
                        ]  
                      ),
                      Row( 
                        children: <Widget>[
                          Text(localisation)
                        ]
                      ),
                      Row(
                        children: <Widget>[
                          Text(description),
                        ]
                      ),
                      Row(
                        children: <Widget>[
                          Text(price),
                        ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
