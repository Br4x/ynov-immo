// Import package
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/api.dart';
import 'package:date_range_form_field/date_range_form_field.dart';
import 'package:time_range/time_range.dart';

class Pickers extends StatefulWidget {
  @override
  _PickersState createState() => _PickersState();
}

GlobalKey myFormKey = new GlobalKey();

void date() {
  var api_instance = new RealEstateAvailabilityApi();
  var api_user = new UserApi();
  var id = 50; // int | ID of real-estate-availability to return
  var body = new User(
      id: 1000,
      email: "anthony@gmail.com",
      password: "anthony"); // User | create user

  // try {
  //   var resultuser2 = api_user.userPost(body);
  //   Future foo() async {
  //     var val = await resultuser2;
  //     print("User2 : ${val}");
  //   }

  //   foo();
  // } catch (e) {
  //   print("Exception when calling UserApi->userPost: $e\n");
  // }

  try {
    var resultuser = api_user.userIdGet(id);
    print("User : ${resultuser}");
    Future foo() async {
      var val = await resultuser;
      print("User : ${val}");
    }

    foo();
  } catch (e) {
    print("Exception when calling UserApi->userIdGet: $e\n");
  }

  try {
    var result = api_instance.realEstateAvailabilityIdGet(id);
    print("Résultat : ${result}");
    Future foo() async {
      var val = await result;
      print("Résultat : ${val}");
    }

    foo();
  } catch (e) {
    print(
        "Exception when calling RealEstateAvailabilityApi->realEstateAvailabilityIdGet: $e\n");
  }
}

class _PickersState extends State<Pickers> {
  DateTimeRange myDateRange;
  var startDate = DateTime.now();
  var endDate = DateTime.parse("2021-03-20 00:00:00Z");
  var price = 15;
  static const double leftPadding = 15;

  final _defaultTimeRange = TimeRangeResult(
    TimeOfDay(hour: 8, minute: 00),
    TimeOfDay(hour: 9, minute: 00),
  );
  TimeRangeResult _timeRange;

  @override
  void initState() {
    super.initState();
    _timeRange = _defaultTimeRange;
  }

  void _submitForm() {
    date();

    final FormState form = myFormKey.currentState;
    form.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              SafeArea(
                child: DateRangeField(
                    context: context,
                    decoration: InputDecoration(
                      labelText: 'Date Range',
                      prefixIcon: Icon(Icons.date_range),
                      hintText: 'Please select a start and end date',
                      border: OutlineInputBorder(),
                    ),
                    initialValue: DateTimeRange(start: startDate, end: endDate),
                    validator: (value) {
                      if (value.start.isBefore(DateTime.now())) {
                        return 'Please enter a valid date';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        myDateRange = value;
                      });
                    }),
              ),
              SafeArea(
                child: TimeRange(
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
                  onRangeCompleted: (range) =>
                      setState(() => _timeRange = range),
                ),
              ),
              const SizedBox(height: 30),
              RaisedButton(
                onPressed: _submitForm,
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
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
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Valider', style: TextStyle(fontSize: 20)),
                ),
              ),
              if (myDateRange != null) ...[
                Container(
                    margin: EdgeInsets.only(top: 30),
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "Date",
                            style: TextStyle(color: ksecondaryColor),
                          ),
                        ],
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment(-0.5, 0.90),
                    child: RichText(
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
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment(-0.57, 0.90),
                    child: RichText(
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
                    )),
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
                Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment(-0.63, 0.90),
                    child: RichText(
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
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment(-0.66, 0.90),
                    child: RichText(
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
                    )),
                Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.bottomCenter,
                    child: RichText(
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
                    )),
              ],
              if (myDateRange == null) ...[
                Container(
                    margin: EdgeInsets.only(top: 30),
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "Veuillez valider les informations !",
                            style: TextStyle(color: ksecondaryColor),
                          ),
                        ],
                      ),
                    )),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
