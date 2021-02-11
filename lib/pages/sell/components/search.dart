import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';
import 'package:http/http.dart' as http;
import 'package:ynov_immo/model/search_address.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:map_controller/map_controller.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  MapController mapController;
  StatefulMapController statefulMapController;
  StreamSubscription<StatefulMapControllerStateChange> sub;

  final TextEditingController _typeAheadController = TextEditingController();
  var selected = new Features(
      geometry: new Geometry(coordinates: [44.8521465, -0.6165271]));

  @override
  void initState() {
    // intialize the controllers
    mapController = MapController();
    statefulMapController = StatefulMapController(mapController: mapController);

    // wait for the controller to be ready before using it
    statefulMapController.onReady.then((_) =>
        statefulMapController.changeFeed.listen((change) => setState(() {})));

    /// [Important] listen to the changefeed to rebuild the map on changes:
    /// this will rebuild the map when for example addMarker or any method
    /// that mutates the map assets is called
    sub = statefulMapController.changeFeed.listen((change) => setState(() {}));
    super.initState();
  }

  void _selectAddress(suggestion) {
    setState(() {
      selected = suggestion;
      print(selected.geometry.coordinates[0]);
      print(selected.geometry.coordinates[1]);
      statefulMapController.centerOnPoint(LatLng(
          selected.geometry.coordinates[0], selected.geometry.coordinates[1]));
      // statefulMapController.switchTileLayer(TileLayerType.hike);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TypeAheadField(
        textFieldConfiguration: TextFieldConfiguration(
            autofocus: true,
            style: DefaultTextStyle.of(context).style.copyWith(
                fontStyle: FontStyle.italic, fontFamily: 'RobotoMono'),
            decoration: InputDecoration(border: OutlineInputBorder()),
            controller: this._typeAheadController),
        suggestionsCallback: (data) async {
          var list = await http.get(Uri.encodeFull(
              'https://api-adresse.data.gouv.fr/search/?q=' + data));
          var decodedJson = json.decode(list.body);
          var res = Search.fromJson(decodedJson);
          return res.features;
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(suggestion.properties.label),
          );
        },
        onSuggestionSelected: (suggestion) {
          this._typeAheadController.text = suggestion.properties.label;
          _selectAddress(suggestion);
        },
      ),
      Container(
          width: 400,
          height: 400,
          child: FlutterMap(
            mapController: mapController,
            options: MapOptions(
              center: LatLng(44.8521465, -0.6165271),
              zoom: 16.0,
            ),
            layers: [
              statefulMapController.tileLayer,
              MarkerLayerOptions(markers: statefulMapController.markers),
              // TileLayerOptions(
              //     urlTemplate:
              //         'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              //     subdomains: ['a', 'b', 'c']),
              // MarkerLayerOptions(
              //   markers: [
              //     Marker(
              //       width: 20.0,
              //       height: 20.0,
              //       point: LatLng(selected.geometry.coordinates[0],
              //           selected.geometry.coordinates[1]),
              //       builder: (ctx) => Container(
              //         child: FlutterLogo(),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ))
    ]);
  }

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  }

  // FlutterMap _flutterMap(BuildContext context, double lat, double lng) {
  //   return FlutterMap(
  //     options: MapOptions(
  //       center: LatLng(lat, lng),
  //       zoom: 13.0,
  //     ),
  //     layers: [
  //       TileLayerOptions(
  //           urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
  //           subdomains: ['a', 'b', 'c']),
  //       MarkerLayerOptions(
  //         markers: [
  //           Marker(
  //             width: 40.0,
  //             height: 40.0,
  //             point: LatLng(lat, lng),
  //             builder: (ctx) => Container(
  //               child: FlutterLogo(),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }
}
