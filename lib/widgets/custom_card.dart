import 'package:bmi_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_card extends StatelessWidget {
  final Widget child;
  final Color cardColor;
  final void Function()? onTap;

  const Custom_card({
    super.key,
    required this.child,
   this.onTap,
   this.cardColor = const Color(0xff333244),

   });

    Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}
