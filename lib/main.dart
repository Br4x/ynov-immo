import 'package:flutter/material.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/pages/calendar/calendar-screen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() => initializeDateFormatting().then((_) => runApp(MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ynov Immo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: ksecondaryColor),
          bodyText2: TextStyle(color: ksecondaryColor),
        ),
      ),
      home: CalendarScreen(),
    );
  }
}
