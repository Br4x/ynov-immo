// import 'package:flutter/material.dart';
// import 'package:ynov_immo/api.dart';
// import 'package:date_time_picker/date_time_picker.dart';

// class Body extends StatefulWidget {
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   DateTime startDate;
//   DateTime endDate;
//   @override
//   void initState() {
//     super.initState;
//     _getAvailabilities();
//   }

//   _getAvailabilities() async {
//     var apiInstance = new RealEstateAvailabilityApi();
//     var propertyId = 2;

//     var result = {
//       "id": 0,
//       "price": 0,
//       "start_date": "2021-02-05T10:32:46.251Z",
//       "end_date": "2021-02-15T10:32:46.251Z",
//       "start_time": "2021-02-05T10:32:46.251Z",
//       "end_time": "2021-02-05T10:32:46.251Z"
//     };

//     var start_date = result["start_date"];
//     var end_date = result["end_date"];

//     DateTime startDateParsed =
//         new DateFormat("yyyy-MM-dd'T'HH:mm").parse(start_date);
//     DateTime endDateParsed =
//         new DateFormat("yyyy-MM-dd'T'HH:mm").parse(end_date);

//     setState(() {
//       startDate = startDateParsed;
//       endDate = endDateParsed;
//     });

//     // print(outputFormat);

//     // setState(() {
//     //   startDate = inputString;
//     // });
//     // try {
//     //   var result = await apiInstance.realEstateAvailabilityIdGet(propertyId);
//     //   print(result);
//     // } catch (e) {
//     //   print("Error API: $e\n");
//     // }
//   }

//   Widget build(BuildContext context) {
//     return Container(
//         margin: EdgeInsets.only(top: 40.0),
//         child: DateTimePicker(
//           type: DateTimePickerType.dateTimeSeparate,
//           dateMask: 'd MMM, yyyy',
//           initialValue: startDate.toString(),
//           firstDate: startDate,
//           lastDate: endDate,
//           icon: Icon(Icons.event),
//           dateLabelText: 'Date',
//           timeLabelText: "Heure",
//           selectableDayPredicate: (date) {
//             // Disable weekend days to select from the calendar
//             if (date.weekday == 7) {
//               return false;
//             }

//             return true;
//           },
//           onChanged: (val) => print(val),
//           validator: (val) {
//             print(val);
//             return null;
//           },
//           onSaved: (val) => print(val),
//         ));
//   }
// }

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:time_picker_widget/time_picker_widget.dart';

class Body extends StatefulWidget {
  @override
  _DateTimePickerPageState createState() => _DateTimePickerPageState();
}

class _DateTimePickerPageState extends State<Body> {
  DateTime startDate;
  DateTime endDate;
  DateTime pickedDate;
  TimeOfDay pickedTime;
  TimeOfDay endTime;

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    _getAvailabilities();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              title: Text(
                  "Date: ${pickedDate.year}, ${pickedDate.month}, ${pickedDate.day}"),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: _pickDate,
            ),
            ListTile(
              title: Text("Time: ${pickedTime.hour}:${pickedTime.minute}"),
              trailing: Icon(Icons.keyboard_arrow_down),
              onTap: _pickTime,
            ),
          ],
        ),
      ),
    );
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
    end_time = TimeOfDay.fromDateTime(endTimeParsed);

    setState(() {
      startDate = startDateParsed;
      endDate = endDateParsed;
      pickedTime = start_time;
      endTime = end_time;
    });
  }

  _pickDate() async {
    DateTime date = await showDatePicker(
      context: context,
      firstDate: startDate,
      lastDate: endDate,
      initialDate: pickedDate,
    );
    if (date != null)
      setState(() {
        pickedDate = date;
        _pickTime();
      });
  }

  _pickTime() async {
    // showCustomTimePicker(
    //   context: context,
    //   // It is a must if you provide selectableTimePredicate
    //   onFailValidation: (context) => print('Unavailable selection'),
    //   initialTime: TimeOfDay(hour: 2, minute: 0),
    //   selectableTimePredicate: (time) =>
    //       time.hour > 1 && time.hour < 14 && time.minute % 10 == 0,
    // ).then((time) => {setState(() => pickedTime = time)});

    TimeOfDay t = await showTimePicker(
      context: context,
      initialTime: pickedTime,
    );

    double toDouble(TimeOfDay t) => t.hour + t.minute / 60.0;

    if (t != null) {
      if (toDouble(t) < toDouble(pickedTime)) {
        return;
      }
      if (toDouble(t) > toDouble(endTime)) {
        return;
      }
      setState(() {
        pickedTime = t;
      });
    }
  }
}
