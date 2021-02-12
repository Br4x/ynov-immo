import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ynov_immo/pages/home/components/app_bar.dart';
import 'package:time_picker_widget/time_picker_widget.dart';
import 'package:time_range/time_range.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarController _controller;
  TextEditingController _c1;
  TextEditingController _c2;
  DateTime startDate;
  DateTime endDate;
  DateTime pickedDate;
  TimeOfDay pickedStartTime;
  TimeOfDay pickedEndTime;
  TimeOfDay startTime;
  TimeOfDay endTime;
  bool endButtonIsEnabled = false;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _getAvailabilities();
    pickedDate = startDate;
    _c1 = new TextEditingController();
    _c2 = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: Center(
                    child: Text(
                  'Planifier une visite',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.black),
                ))),
            TableCalendar(
                initialSelectedDay: startDate,
                locale: 'fr_FR',
                onDaySelected: (date, events, holidays) {
                  setState(() => {pickedDate = date});
                },
                initialCalendarFormat: CalendarFormat.month,
                headerStyle: HeaderStyle(
                    centerHeaderTitle: true,
                    formatButtonVisible: false,
                    titleTextStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
                startingDayOfWeek: StartingDayOfWeek.monday,
                builders: CalendarBuilders(
                    todayDayBuilder: (context, date, event) => Container(
                          margin: const EdgeInsets.all(4.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Text(
                            date.day.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                    selectedDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        )),
                    unavailableDayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.grey[400]),
                        )),
                    dayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(color: Colors.white),
                        ))),
                calendarController: _controller,
                enabledDayPredicate: _predicate),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: TimeRange(
                  fromTitle: Text(
                    'Heure de début',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  toTitle: Text(
                    'Heure de fin',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  titlePadding: 20,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.white),
                  activeTextStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                  borderColor: Colors.transparent,
                  backgroundColor: Theme.of(context).primaryColor,
                  activeBackgroundColor: Colors.orange,
                  firstTime: startTime,
                  lastTime: endTime,
                  timeStep: 60,
                  timeBlock: 60,
                  onRangeCompleted: (range) => {
                        setState(() => pickedStartTime = range.start),
                        setState(() => pickedEndTime = range.end)
                      }),
            ),
            Container(
                margin: EdgeInsets.only(top: 60),
                child: Center(
                  child: RaisedButton(
                    textColor: Colors.white,
                    padding: EdgeInsets.only(
                        top: 15, left: 30, bottom: 15, right: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Réserver',
                      style: TextStyle(fontSize: 18),
                    ),
                    color: Colors.green,
                    onPressed: _onReserved,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  _onReserved() {
    if (pickedStartTime != null && pickedEndTime != null) {
      print(pickedEndTime);
    }
  }

  void _onChooseStartHour() {
    showCustomTimePicker(
            context: context,
            helpText: 'Heure de début',
            onFailValidation: (context) => showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(title: Text('Sélection invalide'));
                }),
            initialTime: startTime,
            selectableTimePredicate: (time) =>
                time.hour >= startTime.hour && time.hour <= endTime.hour)
        .then((time) => {
              setState(() => pickedStartTime = time),
              setState(() => endButtonIsEnabled = true)
            });
  }

  void _onChooseEndHour() {
    showCustomTimePicker(
        context: context,
        helpText: 'Heure de fin',
        onFailValidation: (context) => showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(title: Text('Sélection invalide'));
            }),
        initialTime: startTime,
        selectableTimePredicate: (time) {
          return time.hour >= startTime.hour && time.hour <= endTime.hour;
        }).then((time) => {setState(() => pickedEndTime = time)});
  }

  bool _predicate(DateTime day) {
    if ((day.isAfter(startDate) &&
        day.isBefore(endDate.add(new Duration(days: 1))))) {
      // if (day.weekday == 7) {
      //   return false;
      // }
      return true;
    }
    return false;
  }

  _getAvailabilities() async {
    var result = {
      "id": 0,
      "price": 0,
      "start_date": "2021-02-05T10:32:46.251Z",
      "end_date": "2021-02-15T10:32:46.251Z",
      "start_time": "2021-02-05T10:32:46.251Z",
      "end_time": "2021-02-15T15:32:46.251Z"
    };

    var start_date = result["start_date"];
    var end_date = result["end_date"];
    var start_time = result["start_time"];
    var end_time = result["end_time"];

    DateTime startDateParsed =
        new DateFormat("yyyy-MM-dd'T'HH:mm").parse(start_date);
    DateTime endDateParsed =
        new DateFormat("yyyy-MM-dd'T'HH:mm").parse(end_date);
    DateTime startTimeParsed =
        new DateFormat("yyyy-MM-dd'T'HH:mm").parse(start_time);
    DateTime endTimeParsed =
        new DateFormat("yyyy-MM-dd'T'HH:mm").parse(end_time);

    start_time = TimeOfDay.fromDateTime(startTimeParsed);
    end_time = TimeOfDay.fromDateTime(endTimeParsed).add(minutes: 30);

    setState(() {
      startDate = startDateParsed;
      endDate = endDateParsed;
      startTime = start_time;
      endTime = end_time;
    });
  }
}
