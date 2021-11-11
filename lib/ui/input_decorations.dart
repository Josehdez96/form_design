import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration loginInputDecoration() {
    return const InputDecoration(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.deepPurple),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.deepPurple, width: 2),
      ),
      hintText: 'rick@itlooksfake.com',
      labelText: 'Email address',
      labelStyle: TextStyle(
        color: Colors.grey
      ),
      prefixIcon: Icon(Icons.alternate_email, color: Colors.deepPurple)
    );
  }
}