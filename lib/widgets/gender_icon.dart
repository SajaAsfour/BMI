import 'package:flutter/material.dart';

class gender_icon extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;

  const gender_icon({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffec1654) : Color(0xff211e33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 70,
          ),
          Text(
            text,
            style: TextStyle(
              fontFamily: "Times New Roman",
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
