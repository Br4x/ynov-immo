import 'dart:math';
import 'package:ynov_immo/pages/home/components/custom_search_city.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilterScreenState();
  }
}

enum PropertyType { house, apartment, building }

class FilterScreenState extends State<FilterScreen> {

  var _type;
  var _city;
  var _price;
  var _surface;

  // price
  RangeValues values = RangeValues(50000, 200000);
  RangeLabels labels = RangeLabels('50000', '200000');
  // surface
  RangeValues valuesS = RangeValues(30, 100);
  RangeLabels labelsS = RangeLabels('30', '100');

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildType() {
    return Column(
      // children: _group
      //     .map((t) => RadioListTile(
      //   title: Text("${t.text}"),
      //   groupValue: _currVal,
      //   value: t.index,
      //   onChanged: (val) {
      //     setState(() {
      //       _currVal = val.index;
      //       _currText = t.text;
      //     });
      //   },
      // ))
      //     .toList(),
      children: <Widget>[
        RadioListTile<PropertyType>(
          title: const Text('Maison'),
          value: PropertyType.house,
          groupValue: _type,
          onChanged: (PropertyType value) {
            setState(() {
              _type = value;
            });
          },
        ),
        RadioListTile<PropertyType>(
          title: const Text('Appartement'),
          value: PropertyType.apartment,
          groupValue: _type,
          onChanged: (PropertyType value) {
            setState(() {
              _type = value;
            });
          },
        ),
      ],
    );
  }
  Widget _buildCity() {
    // return CustomSearchCity();
    return TextFormField(
      decoration: InputDecoration(labelText: 'Ville'),
      validator: (String value){
        if(value.isEmpty) {
          return 'Rentrez le nom de la ville';
        } else {
          return value;
        }
      },
      onSaved: (String value){
        _city = value;
      },
    );
  }
  Widget _buildPrice() {
    return RangeSlider(
        min: 10000,
        max: 300000,
        divisions: 100,
        values: values,
        labels: labels,
        onChanged: (value) {
          // print(value);
          setState(() => _price = [value.start,value.end]);
          setState(() => values = RangeValues(value.start,value.end));
          setState(() => labels = RangeLabels(value.start.toInt().toString(), value.end.toInt().toString()));
        });
  }
  Widget _buildSurface() {
    return RangeSlider(
        min: 0,
        max: 300,
        divisions: 30,
        values: valuesS,
        labels: labelsS,
        onChanged: (value) {
          // print('value surface: $value');
          setState(() => _surface = [value.start,value.end]);
          setState(() => valuesS = RangeValues(value.start,value.end));
          setState(() => labelsS = RangeLabels(value.start.toInt().toString(), value.end.toInt().toString()));
          // setState(() => labelsS = RangeLabels('value.start.toString()', value.end.toString()));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.topRight,
      // margin: EdgeInsets.all(24),
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Builder(
        builder: (context) => Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text('Type de biens'),
                  _buildType(),
                  _buildCity(),
                  Text('Prix'),
                  _buildPrice(),
                  Text('Surface'),
                  _buildSurface(),
                  SizedBox(height: 100,),
                  RaisedButton(
                    child: Text(
                      'Valider',
                      style: TextStyle(color: Colors.white, fontSize: 16,),
                    ),
                    color: Colors.red,
                    onPressed: () => {
                      print(_formKey.currentState.validate())
                      // if (!_formKey.currentState.validate()) {
                      //   // return null;
                      // }
                    },
                  )
                ]
            )
        ),
      )
    );
  }
}
