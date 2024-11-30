// ignore_for_file: prefer_const_constructors, camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String text;
  final double height;
  final Function() onPressed;
  const customButton({
    super.key,
    required this.text,
    this.height = 50,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: "Times New Roman",
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffec1654),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ))),
    );
  }
}
