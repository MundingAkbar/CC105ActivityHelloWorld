import 'package:flutter/material.dart';

final textInputDecoration = InputDecoration(
  hintText: "Email",
  fillColor: Colors.white,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.brown[400], width: 2.0),
  ),
);
