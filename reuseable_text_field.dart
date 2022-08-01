// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:ubuy/constants/color_constant.dart';
import 'package:ubuy/constants/text_style_constant.dart';

class ReuseableTextField extends StatelessWidget {
  ReuseableTextField({ required this.textcontroller, required this.label});

  String label;
  // final suffixIcon icon;
  // Widget  icon;
  final TextEditingController textcontroller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textcontroller,
      decoration: InputDecoration(
        filled: true,
        fillColor: kTextboxbackgroundColor,
        hintText: label,
        hintStyle: kTextboxhintstyle,
        border: kBorderstyle,
        // suffixIcon: Icon(icon),
        // ReuseableEye();
      ),
    );
  }
}
