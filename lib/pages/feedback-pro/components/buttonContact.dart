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
                Scaffold.of(context).showSnackBar(SnackBar(
                  content:
                      Text('Votre message a bien été envoyé au propriétaire.'),
                  duration: Duration(seconds: 4),
                ));
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
