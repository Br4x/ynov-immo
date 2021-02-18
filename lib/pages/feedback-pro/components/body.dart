import 'package:flutter/material.dart';
import 'package:ynov_immo/pages/feedback-pro/components/feedback.dart';

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
            maxLines: 10,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              icon: Icon(Icons.person),
              hintText: 'Écrivez message',
              labelText: 'Laisser un feedback pour le propriétaire: ',
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 2.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.0),
              ),
            ),
            onSaved: (String value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String value) {
              return value.contains('@') ? 'Do not use the @ char.' : null;
            },
            style:
                TextStyle(fontSize: 20.0, color: Colors.black.withOpacity(1.0)),
          ),
          Form(
              child: Column(
            children: [
              TextFormField(
                validator: (String value) {
                  if (value.length < 10)
                    return "Enter at least 10 char";
                  else
                    return null;
                },
                decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Name",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                validator: (String value) {
                  if (value.length < 3)
                    return "Enter at least 3 char";
                  else
                    return null;
                },
                decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: OutlineInputBorder()),
                obscureText: true,
              ),
            ],
          )),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
