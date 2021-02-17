import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/feedback-pro/components/feedback.dart';
import 'package:ynov_immo/pages/details/components/item_image.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            "Visite en cours",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(1.0)),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Écrivez message',
              labelText: 'Laisser un feedback pour le propriétaire: ',
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.contains('@') ? 'Do not use the @ char.' : null;
            },
          )
        ],
      ),
    );
  }
}
