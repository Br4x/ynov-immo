// Import package
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ynov_immo/constants.dart';
import 'package:date_range_form_field/date_range_form_field.dart';
import 'package:time_range/time_range.dart';
import 'package:numberpicker/numberpicker.dart';

class Pickers extends StatefulWidget {
  @override
  _PickersState createState() => _PickersState();
}

GlobalKey myFormKey = new GlobalKey();

class _PickersState extends State<Pickers> {
  //Variable for date
  DateTimeRange myDateRange;
  var startDate = DateTime.now();
  var endDate = DateTime.parse("2021-03-20 00:00:00Z");
  var price = 15;

  //Variable for time
  TimeRangeResult _timeRange;
  final _defaultTimeRange = TimeRangeResult(
    TimeOfDay(hour: 8, minute: 00),
    TimeOfDay(hour: 9, minute: 00),
  );
  static const double leftPadding = 15;

  //variable for numberpicker
  int _currentIntValue = 10;
  int _currentHorizontalIntValue = 10;
  int _currentInfIntValue = 10;
  int _currentInfIntValueDecorated = 10;
  double _currentDoubleValue = 3.0;
  NumberPicker integerNumberPicker;
  NumberPicker horizontalNumberPicker;
  NumberPicker integerInfiniteNumberPicker;
  NumberPicker integerInfiniteDecoratedNumberPicker;
  NumberPicker decimalNumberPicker;

  Decoration _decoration = new BoxDecoration(
    border: new Border(
      top: new BorderSide(
        style: BorderStyle.solid,
        color: Colors.black26,
      ),
      bottom: new BorderSide(
        style: BorderStyle.solid,
        color: Colors.black26,
      ),
    ),
  );

  @override
  void initState() {
    super.initState();
    _timeRange = _defaultTimeRange;
  }

  void _submitForm() {
    if (price == null) {
      price = 0;
    }
    if (_timeRange.end != null) {
      final FormState form = myFormKey.currentState;
      form.save();
      final snackBar = SnackBar(
        content: Text('Sauvegarder !'),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    }
  }

  Future _showIntDialog() async {
    await showDialog<int>(
      context: context,
      builder: (BuildContext context) {
        return new NumberPickerDialog.integer(
          minValue: 0,
          maxValue: 100,
          step: 1,
          initialIntegerValue: price,
        );
      },
    ).then((num value) {
      if (value != null) {
        setState(() => price = value);
        integerNumberPicker.animateInt(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: myFormKey,
        child: Column(
          children: <Widget>[
            DateRangeField(
                context: context,
                decoration: InputDecoration(
                  labelText: 'Date',
                  prefixIcon: Icon(Icons.date_range),
                  hintText: 'Veuillez sélectionner une date de début et de fin',
                  border: OutlineInputBorder(),
                ),
                initialValue: DateTimeRange(start: startDate, end: endDate),
                validator: (value) {
                  if (value.start.isBefore(DateTime.now())) {
                    return 'veuillez entrer une date valide';
                  }
                  return null;
                },
                onSaved: (value) {
                  setState(() {
                    myDateRange = value;
                  });
                }),
            TimeRange(
              fromTitle: Text(
                'De',
                style: TextStyle(
                  fontSize: 14,
                  color: kTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              toTitle: Text(
                'à',
                style: TextStyle(
                  fontSize: 14,
                  color: kTextColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              titlePadding: leftPadding,
              textStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: kTextColor,
              ),
              activeTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
              borderColor: kTextColor,
              activeBorderColor: kTextColor,
              backgroundColor: Colors.transparent,
              activeBackgroundColor: kTextColor,
              firstTime: TimeOfDay(hour: 8, minute: 00),
              lastTime: TimeOfDay(hour: 20, minute: 00),
              initialRange: _timeRange,
              timeStep: 10,
              timeBlock: 60,
              onRangeCompleted: (range) => setState(() => _timeRange = range),
            ),
            const SizedBox(height: 20),
            if (myDateRange != null && _timeRange != null) ...[
              Container(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "Dates",
                          style: TextStyle(color: ksecondaryColor),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, //Center Column contents horizontally,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "Début: ",
                          style: TextStyle(color: ksecondaryColor),
                        ),
                        TextSpan(
                          text:
                              "${myDateRange.start.day.toString()} - ${myDateRange.start.month.toString()} - ${myDateRange.start.year.toString()}",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "Fin: ",
                          style: TextStyle(color: ksecondaryColor),
                        ),
                        TextSpan(
                          text:
                              "${myDateRange.end.day.toString()} - ${myDateRange.end.month.toString()} - ${myDateRange.end.year.toString()}",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "Horaires",
                          style: TextStyle(color: ksecondaryColor),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "Début: ",
                          style: TextStyle(color: ksecondaryColor),
                        ),
                        TextSpan(
                          text: "${_timeRange.start.format(context)}",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "Fin: ",
                          style: TextStyle(color: ksecondaryColor),
                        ),
                        TextSpan(
                          text: "${_timeRange.end.format(context)}",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, //Center Row contents horizontally,
                crossAxisAlignment:
                    CrossAxisAlignment.center, //Center Row contents vertically,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "Prix: ",
                          style: TextStyle(color: ksecondaryColor),
                        ),
                        TextSpan(
                          text: "$price €",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    iconSize: 20,
                    icon: Icon(Icons.mode_edit),
                    color: kTextLightColor,
                    onPressed: () => _showIntDialog(),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (_timeRange.end != null) {
                    _submitForm();
                  }
                  if (_timeRange.end == null) {
                    _submitForm();
                  }
                  // Find the Scaffold in the widget tree and use
                  // it to show a SnackBar.
                },
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        kPrimaryColor,
                        kButtonLightColor,
                        kPrimaryColor,
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: const Text('Valider', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
            if (myDateRange == null || _timeRange == null) ...[
              const SizedBox(height: 30),
              Center(
                  child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Veuillez rensigner toutes les informations !",
                      style: TextStyle(color: ksecondaryColor, fontSize: 18.0),
                    ),
                  ],
                ),
              )),
            ],
          ],
        ),
      ),
    );
  }
}
