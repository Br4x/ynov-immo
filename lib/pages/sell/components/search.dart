import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong/latlong.dart';
import 'package:http/http.dart' as http;
import 'package:ynov_immo/model/search_address.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:map_controller/map_controller.dart';
import 'package:ynov_immo/pages/sell/components/interfaces/sell_form.dart';
import 'package:ynov_immo/pages/sell/components/style/common_style.dart';

class SearchPage extends StatefulWidget {
  final Function(String, dynamic) setParentState;

  const SearchPage({Key key, this.setParentState}) : super(key: key);

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
      final double longitude = selected.geometry.coordinates[0];
      final double latitude = selected.geometry.coordinates[1];

      statefulMapController.centerOnPoint(LatLng(latitude, longitude));
      statefulMapController.addStatefulMarker(
          name: "Mon bien",
          statefulMarker: StatefulMarker(
              height: 80.0,
              width: 120.0,
              state: <String, dynamic>{"showText": false},
              point: LatLng(latitude, longitude),
              builder: (BuildContext context, Map<String, dynamic> state) {
                Widget w;
                final markerIcon = IconButton(
                    icon: const Icon(Icons.location_on),
                    onPressed: () => statefulMapController.mutateMarker(
                        name: "Mon bien",
                        property: "showText",
                        value: !(state["showText"] as bool)));
                if (state["showText"] == true) {
                  w = Column(children: <Widget>[
                    markerIcon,
                    Container(
                        child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Mon bien",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontFamily: 'RobotoMono'),
                            ))),
                  ]);
                } else {
                  w = markerIcon;
                }
                return w;
              }
          )
      );

      widget.setParentState(SellFormFields.ADDRESS, selected.properties.housenumber + " " + selected.properties.street);
      widget.setParentState(SellFormFields.ZIP_CODE, selected.properties.postcode);
      widget.setParentState(SellFormFields.CITY, selected.properties.city);
      widget.setParentState(SellFormFields.LATITUDE, latitude.toString());
      widget.setParentState(SellFormFields.LONGITUDE, longitude.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TypeAheadField(
        textFieldConfiguration: TextFieldConfiguration(
            style: DefaultTextStyle.of(context).style.copyWith(
                fontStyle: FontStyle.italic, fontFamily: 'RobotoMono'),
            decoration: CommonStyle.textFieldDecoration(""),
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
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
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
              ],
            )),
      )
    ]);
  }

  @override
  void dispose() {
    sub.cancel();
    super.dispose();
  }
}
