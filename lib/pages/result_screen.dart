// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  String getStatus() {
    if (result < 18.5)
      return "UnderWeight";
    else if (result < 24.9)
      return "NormalWeight";
    else if (result < 29.9)
      return "OverWeight";
    else
      return "Obese";
  }

  Color getStatusColor() {
    if (result < 18.5)
      return Color(0xff60bcf1);
    else if (result < 24.9)
      return Color(0xffa1ca5c);
    else if (result < 29.9)
      return Color(0xfff68d1c);
    else
      return Color(0xfff2593f);
  }
  const ResultScreen({
    super.key,
    required this.result,
  });
  final double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0c20),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w100,
            fontFamily: "Times New Roman",
          ),
        ),
        backgroundColor: Color(0xff0b0c20),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getStatus(),
              style: TextStyle(
                fontFamily: "Times New Roman",
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: getStatusColor(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              result.toStringAsFixed(2),
              style: TextStyle(
                fontFamily: "Times New Roman",
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
