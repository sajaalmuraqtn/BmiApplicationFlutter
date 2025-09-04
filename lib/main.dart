import 'package:bmi_app/helpers/constants.dart';
import 'package:bmi_app/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MaterialApp(
    theme:ThemeData.dark().copyWith(//هون لحتى اضيف عليها شغلات copyWith
       appBarTheme: AppBarTheme(backgroundColor: Color(0xff242638)),
       primaryColor: primaryColor,
       scaffoldBackgroundColor: Color(0xFF1C2135)

    ),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ) );
}
 