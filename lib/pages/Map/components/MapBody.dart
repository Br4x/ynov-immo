import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';

import '../../../api.dart';
import 'RealEstateMarker.dart';
import 'RealsEstatePopup.dart';

class MapBody extends StatelessWidget {


  Future<List<RealEstateMarker>> getRealEstate () async {
    try {
      var api = new RealEstateApi();
      var list = await api.realEstateGet();

      List<RealEstate> realEstateList = new List<RealEstate>();
      for (var realEstatePagination in list) {
        realEstateList += realEstatePagination.list;
      }
      debugPrint('realEstateList = ' + realEstateList.toString());

      List<RealEstateMarker> markerList = new List<RealEstateMarker>();
      for (var realEstate in realEstateList) {
        debugPrint('realEstate = ' + realEstate.toString());
        realEstate.longitude = realEstate.longitude.replaceAll(",", ".");
        realEstate.latitude = realEstate.latitude.replaceAll(",", ".");
        double longitude = double.tryParse(realEstate.longitude);
        double latitude = double.tryParse(realEstate.latitude);
        bool isDouble = (longitude != null && latitude != null);
        if(isDouble) {
          bool betweenIntervalLongitude = (longitude <= 90 && longitude >= -90);
          bool betweenIntervalLatitude = (latitude <= 90 && latitude >= -90);
          if (betweenIntervalLatitude && betweenIntervalLongitude) {
            debugPrint(' realEstate.longitude = ' + realEstate.longitude);
            debugPrint(' realEstate.latitude = ' + realEstate.latitude);
            markerList.add(RealEstateMarker(realEstate: realEstate));
          }
        }
      }
      debugPrint('api request done');
      return markerList;
    } on Error catch (error) {
      debugPrint('api request error');
      debugPrint(error.stackTrace.toString());
      throw Exception("Error on API request: " + error.toString());
    }
  }

  final PopupController _popupLayerController = PopupController();

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FutureBuilder(
            future: getRealEstate(),
            builder: (context, snapshot) {
              if(snapshot.hasError){
                return Center(
                  child: Text(
                      "Une erreur a été rencontré: " + snapshot.error.toString()
                  ),
                );
              }
              else if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                List<Marker> markers = snapshot.data;
                return Container(
                  // here
                    height: 500,
                    alignment: Alignment.centerLeft,
                    child:FlutterMap(
                      options: MapOptions(
                        plugins: <MapPlugin>[PopupMarkerPlugin()],
                        center: LatLng(44.837789, -0.57918),
                        zoom: 13.0,
                        interactive: true,
                        onTap: (_) => _popupLayerController.hidePopup(),
                      ),
                      layers: [
                        TileLayerOptions(
                            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                            subdomains: ['a', 'b', 'c']
                        ),
                        PopupMarkerLayerOptions(
                            markers: markers,
                            popupController: _popupLayerController,
                            popupBuilder: (_, Marker marker) {
                              if (marker is RealEstateMarker) {
                                return RealEstatePopup(realEstate: marker.realEstate);
                              }
                              return Card(child: const Text('Not a monument'));
                            }
                        ),
                      ],
                    )
                );
              }
            }
          ),
        ],
      ),
    );
  }
}