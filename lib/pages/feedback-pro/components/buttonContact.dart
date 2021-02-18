import 'package:flutter/material.dart';

class ButtonContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          SizedBox(
            width: 350.0,
            height: 60.0,
            child: ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red[400], // background
                onPrimary: Colors.white, // foreground
              ),
              child: Text("Contacter le propriétaire",
                  style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
