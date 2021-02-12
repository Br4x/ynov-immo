import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/home/components/app_bar.dart';
import 'package:ynov_immo/pages/home/components/body.dart';
import 'package:ynov_immo/pages/dateTimePickers/pickers-screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Body(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
            ),
            ListTile(
              title: Text('Date Pickers'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreenPickers()),
                );
              },
            ),
            ListTile(
              title: Text('Item'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
