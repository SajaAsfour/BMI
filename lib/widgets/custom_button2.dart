import 'package:flutter/material.dart';

class custom_button2 extends StatefulWidget {
  final String text;
  final int number;
  final ValueChanged<int> onWeightChanged; // Callback to notify changes

  const custom_button2({
    super.key,
    required this.text,
    required this.number,
    required this.onWeightChanged,
  });

  @override
  State<custom_button2> createState() => _custom_button2State();
}

class _custom_button2State extends State<custom_button2> {
  late int number;

  @override
  void initState() {
    super.initState();
    number = widget.number; // Initialize state
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff211e33),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontFamily: "Times New Roman",
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              number.toString(),
              style: TextStyle(
                fontFamily: "Times New Roman",
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton.filled(
                  onPressed: () {
                    setState(() {
                      if (number > 1) {
                        number--; // Decrease weight
                        widget.onWeightChanged(number); // Notify parent
                      }
                    });
                  },
                  icon: Icon(Icons.remove),
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xff464857),
                  ),
                ),
                IconButton.filled(
                  onPressed: () {
                    setState(() {
                      number++; // Increase weight
                      widget.onWeightChanged(number); // Notify parent
                    });
                  },
                  icon: Icon(Icons.add),
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xff464857),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
