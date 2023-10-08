import 'package:flutter/material.dart';

Widget form1({text}) {
  return TextFormField(
    decoration: InputDecoration(
      filled: true,
      hintText: text,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
