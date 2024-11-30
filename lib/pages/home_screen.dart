import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/result_screen.dart';
import 'package:flutter_application_2/widgets/custom_button.dart';
import 'package:flutter_application_2/widgets/custom_button2.dart';
import 'package:flutter_application_2/widgets/gender_icon.dart';
import 'package:flutter_application_2/widgets/height_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMaleSelected = true;
  int height = 174;
  int weight = 80;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0c20),
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMaleSelected = true;
                        });
                      },
                      child: gender_icon(
                        text: 'Male',
                        icon: Icons.male_rounded,
                        isSelected: isMaleSelected,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMaleSelected = false;
                        });
                      },
                      child: gender_icon(
                        text: 'Female',
                        icon: Icons.female_rounded,
                        isSelected: !isMaleSelected,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Height_container(
              height: height,
              onHeightChanged: (newHeight) {
                setState(() {
                  height = newHeight;
                });
              },
            ),
            Expanded(
              child: Row(
                children: [
                  
                  custom_button2(
                    text: 'Age',
                    number: 30,
                    onWeightChanged: (_) {}, // No need to update
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  custom_button2(
                    text: 'Weight',
                    number: weight,
                    onWeightChanged: (newWeight) {
                      setState(() {
                        weight = newWeight; // Update weight dynamically
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            customButton(
              text: 'Calculate',
              onPressed: () {
                setState(() {
                  double heightInMeters = height / 100;
                  double result = weight / (heightInMeters * heightInMeters);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ResultScreen(result: result);
                      },
                    ),
                  );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
