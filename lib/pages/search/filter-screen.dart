import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FilterScreenState();
  }
}

class FilterScreenState extends State<FilterScreen> {

  var _type;
  var _city;
  var _price;
  var _surface;

  RangeValues values = RangeValues(50000, 200000);
  RangeLabels labels = RangeLabels('50000', '200000');

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildType() {
    return null;
  }
  Widget _buildCity() {
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
        divisions: 20,
        values: values,
        labels: labels,
        onChanged: (value) {
          _price = [value.start,value.end];
          values = RangeValues(value.start,value.end);
          labels = RangeLabels(value.start.toString(), value.end.toString());
        });
  }
  Widget _buildSurface() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // _buildType(),
            _buildCity(),
            _buildPrice(),
            // _buildSurface(),
            SizedBox(height: 100,),
            RaisedButton(
              child: Text(
                  'Valider',
                  style: TextStyle(color: Colors.white, fontSize: 16,),
              ),
              color: Colors.red,
              onPressed: () => {},
            )
          ]
        )
      )
    );
  }
}

// class FilterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text('hello');
//   }
// }
