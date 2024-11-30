import 'package:flutter/material.dart';

class Height_container extends StatefulWidget {
  final int height;
  final ValueChanged<int> onHeightChanged; // Callback to notify changes

  const Height_container({
    super.key,
    required this.height,
    required this.onHeightChanged,
  });

  @override
  State<Height_container> createState() => _Height_containerState();
}

class _Height_containerState extends State<Height_container> {
  late int height;

  @override
  void initState() {
    super.initState();
    height = widget.height; // Initialize state
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: Color(0xff211e33),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Height",
              style: TextStyle(
                fontFamily: "Times New Roman",
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Times New Roman",
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "cm",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Times New Roman",
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Slider(
              value: height.toDouble(),
              min: 100,
              max: 200,
              activeColor: Color(0xffec1654),
              inactiveColor: Color(0xff545569),
              onChanged: (value) {
                setState(() {
                  height = value.toInt();
                });
                widget.onHeightChanged(height); // Notify parent widget
              },
            ),
          ],
        ),
      ),
    );
  }
}
