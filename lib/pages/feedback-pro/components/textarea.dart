import 'package:flutter/material.dart';

class FeedbackArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0),
          ),
          SizedBox(
            width: 350,
            child: TextFormField(
              maxLines: 10,
              decoration: const InputDecoration(
                hintText: 'Écrivez le message',
                labelText: 'Laisser un feedback pour le propriétaire: ',
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
              onSaved: (String value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              style: TextStyle(
                  fontSize: 20.0, color: Colors.black.withOpacity(1.0)),
            ),
          ),
        ],
      ),
    );
  }
}
