import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ynov_immo/pages/sell/components/property_images/image_gallery.dart';
import 'package:ynov_immo/pages/sell/components/style/common_style.dart';
import 'package:ynov_immo/pages/sell/components/interfaces/sell_form.dart';
import 'package:ynov_immo/pages/sell/components/miscellaeneous/separator.dart';

class PropertyImages extends StatefulWidget {
  final Function(String, dynamic) setParentState;

  const PropertyImages({Key key, this.setParentState}) : super(key: key);

  @override
  _PropertyImagesState createState() => _PropertyImagesState();
}

class _PropertyImagesState extends State<PropertyImages> {
  List<String> imagesURL = [""];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Images', style: CommonStyle.text()),

          for (int i = 0; i < imagesURL.length; i++) (
            Row(
              children: [
                Flexible(
                    child: TextField(
                      decoration: CommonStyle.textFieldDecoration("URL de l'image"),
                      onChanged: (value) {
                        setState(() {
                          imagesURL[i] = value;
                        });
                        widget.setParentState(SellFormFields.IMAGES_URL, imagesURL);
                      },
                    )
                ),
                IconButton(
                    icon: Icon(Icons.add_circle_outlined),
                    tooltip: "Ajouter une image",
                    onPressed: () {
                      setState(() {
                        imagesURL.add("");
                      });
                      widget.setParentState(SellFormFields.IMAGES_URL, imagesURL);
                    }
                ),

                if (i != 0) (
                  IconButton(
                      icon: Icon(Icons.remove_circle),
                      tooltip: "Supprimer une image",
                      onPressed: () {
                        setState(() {
                          imagesURL.removeAt(i);
                        });
                        widget.setParentState(SellFormFields.IMAGES_URL, imagesURL);
                      }
                  )
                )
              ],
            )
        ),
        ImageGallery(urls: imagesURL)
        ],
      )
    );
  }
}
