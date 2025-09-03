import 'package:bmi_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CalculateButton extends StatelessWidget {
  final String title;
 
  const CalculateButton({
    super.key,
    required this.title,
   });

    Widget build(BuildContext context) {
     return
     
      Container(
        height: 80,
        child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/result');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w800,
            color: Colors.white ,
            decoration: TextDecoration.none
          ),
        ),
            ),
      );
  }
    
  }
 
