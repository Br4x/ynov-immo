import 'package:flutter/material.dart';
import 'package:ynov_immo/constants.dart';
import 'package:ynov_immo/pages/home/home-screen.dart';
import 'package:ynov_immo/api.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var api_instance = new RealEstateApi();
    var where = []; // List<String> | column:value will use sql LIKE for search eg:id:67 will where id >67 eg2: name:eric => where name LIKE '%eric%'
    var fields = ''; // String | {$tableColumn},{$tableColumn}... 
    var order = ''; // String | eg: id desc, name desc
    var offset = 56; // int | sql offset eg: 10
    var limit = 56; // int | limit returning object count

try { 
    var result = api_instance.realEstateGet();
    print(result);
} catch (e) {
    print("Exception when calling RealEstateApi->realEstateGet: $e\n");
}

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ynov Immo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.blueGrey,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: ksecondaryColor),
          bodyText2: TextStyle(color: ksecondaryColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
