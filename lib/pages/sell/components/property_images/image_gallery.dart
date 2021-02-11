import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/sell/components/property_images/image.dart';
import 'package:http/http.dart' as http;

class ImageGallery extends StatefulWidget {
  final List<String> urls;

  ImageGallery({Key key, @required this.urls}) : super(key: key);

  @override
  _ImageGalleryState createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  List<Widget> imageCards;

  Future<void> verifyImagesURL() async {
    imageCards = [];
    for (String url in widget.urls) {
      final http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        imageCards.add(ImageCard(url: url));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: this.verifyImagesURL(),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: Text('...'));
          } else {
            return CarouselSlider(
              items: this.imageCards,
              options: CarouselOptions(
                height: this.imageCards.isEmpty ? 0.0 : 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            );
          }
        }
    );
  }
}