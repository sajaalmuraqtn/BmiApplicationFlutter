import 'package:bmi_app/widgets/calculateButton.dart';
import 'package:bmi_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';

 
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

 
  @override
  Widget build(BuildContext context) {
  
 return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Your Result',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Custom_card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Normal',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff24D876),
                    ),
                  ),
                  Text(
                    '12.5',
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'You have a normal body weight. Good job!',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          CalculateButton(title: 'RE-calculate'),
        ],
      ),
    );
  }
}