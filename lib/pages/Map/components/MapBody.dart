import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';

import '../../../api.dart';
import 'RealEstateMarker.dart';
import 'RealsEstatePopup.dart';

class MapBody extends StatelessWidget {

  Future<List<Marker>> getRealEstate () async {
    var api = new RealEstateApi();
    var list = await api.realEstateGet();
    List<RealEstate> realEstateList;
    for (var realEstatePagination in list) {
      realEstateList += realEstatePagination.list;
    }
    List<RealEstateMarker> markerList;
    for (var realEstate in realEstateList) {
      markerList.add(RealEstateMarker(realEstate: realEstate));
    }
    return markerList;
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
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                List<Marker> markers = snapshot.data;
                return FlutterMap(
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
                );
              }
            }
          ),
        ],
      ),
    );
  }
}