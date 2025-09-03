import 'package:bmi_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_card extends StatelessWidget {
  final Widget child;
 
  const Custom_card({
    super.key,
    required this.child,
   });

    Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: background_card_color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}
