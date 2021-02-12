import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ynov_immo/api.dart';
import 'package:ynov_immo/pages/real-estate-visits-list/components/body.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'fake_api.dart';

class VisitItem extends StatefulWidget {
  final index;
  final bool isToday;
  final Function onPress;
  final int realEstateId;
  final String accroche;
  final String city;
  final DateTime startTime;
  final DateTime endTime;
  final bool hasGarden;
  final bool hasExposedStone;
  final bool hasCimentTiles;
  final bool hasParquetFloor;

  VisitItem(
      {@required this.index,
      this.onPress,
      @required this.isToday,
      @required this.realEstateId,
      @required this.accroche,
      @required this.city,
      @required this.startTime,
      @required this.endTime,
      @required this.hasGarden,
      @required this.hasExposedStone,
      @required this.hasCimentTiles,
      @required this.hasParquetFloor});

  _VisitItem createState() => _VisitItem();
}

class _VisitItem extends State<VisitItem> {
  List<RealEstateImage> images = [];

  @override
  void initState() {
    super.initState();
    loadImages();
  }

  loadImages() async {
    // var apiInstance = new RealEstateImageApi();
    // var where = ['id_real_estate:%${widget.realEstateId}%'];
    var apiInstance = new FakeApi();

    try {
      // var result = await apiInstance.realEstateImageGet(where: where);
      print(widget.realEstateId);
      var result = apiInstance.realEstatesImages
          .where((image) => image.idRealEstate == widget.realEstateId)
          .toList();
      setState(() {
        images = result;
      });
    } catch (e) {
      print(
          "Exception when calling RealEstateImageApi->realEstateImageGet: $e\n");
    }
  }

  @override
  Widget build(BuildContext context) {
    var realEstateProperties = buildRealEstateStringProperties();
    var visitTime = buildVisitStringTime();

    return Container(
      width: double.infinity,
      height: 120,
      child: Card(
        elevation: 5,
        child: Row(
          children: <Widget>[
            Container(
                width: 130,
                height: double.infinity,
                // color: Colors.black,
                child: images == null
                    ? CircularProgressIndicator()
                    : CarouselSlider(
                        options: CarouselOptions(),
                        items: images.map((image) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Image.network(image.url)));
                            },
                          );
                        }).toList(),
                      )),
            Container(
              padding: EdgeInsets.all(4.0),
              width: 192,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                    child: Text(
                      widget.accroche,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                    child: Text(
                      widget.city,
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                    child: Text(
                      realEstateProperties,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          if (!widget.isToday)
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                              child: Text(
                                  "le ${DateFormat('dd/MM/yyyy').format(widget.startTime)}"),
                            ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                            child: Text(visitTime),
                          ),
                        ],
                      ),
                      if (isItNow(widget.startTime, widget.endTime))
                        Container(
                          width: 100,
                          child: FlatButton(
                              color: Colors.pink,
                              onPressed: () {},
                              child: Text(
                                "Commencer",
                                style: TextStyle(
                                    fontSize: 12.3,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isItNow(DateTime startTime, DateTime endTime) {
    DateTime now = new DateTime.now();
    if (isSameDate(startTime, now) &&
        startTime.hour <= now.hour &&
        endTime.hour >= now.hour) {
      return true;
    }
    return false;
  }

  String buildVisitStringTime() {
    var visitTime = widget.startTime.hour.toString() +
        "h" +
        ((widget.startTime.minute == 0)
            ? ""
            : widget.startTime.minute.toString()) +
        " - " +
        widget.endTime.hour.toString() +
        "h" +
        ((widget.endTime.minute == 0) ? "" : widget.endTime.minute.toString());
    return visitTime;
  }

  String buildRealEstateStringProperties() {
    var realEstateProperties = "";
    var propertiesExists = [
      widget.hasGarden,
      widget.hasExposedStone,
      widget.hasCimentTiles,
      widget.hasParquetFloor
    ];
    if (widget.hasGarden) realEstateProperties += "Jardin";
    if (widget.hasExposedStone)
      realEstateProperties +=
          (propertiesExists[0] ? ", " : "") + "Pierre apparente";
    if (widget.hasCimentTiles)
      realEstateProperties +=
          (propertiesExists[0] || propertiesExists[1] ? ", " : "") +
              "Tuiles en ciment";
    if (widget.hasParquetFloor)
      realEstateProperties +=
          (propertiesExists[0] || propertiesExists[1] || propertiesExists[2]
                  ? ", "
                  : "") +
              "Parquet";
    return realEstateProperties;
  }
}
