import 'package:flutter/material.dart';

const aaa = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color.fromARGB(255, 231, 24, 24),
    ),
  ),
  // fillColor: Colors.red,
  filled: true,
  contentPadding:  EdgeInsets.all(8),
);
