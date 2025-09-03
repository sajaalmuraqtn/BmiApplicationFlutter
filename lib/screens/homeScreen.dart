import 'package:bmi_app/helpers/constants.dart';
import 'package:bmi_app/widgets/calculateButton.dart';
import 'package:bmi_app/widgets/custom_card.dart';
import 'package:bmi_app/widgets/custom_icon_button.dart';
import 'package:bmi_app/widgets/gender_box_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator"), centerTitle: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
             Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Custom_card(
                    child: GenderBoxContent(
                      gender: 'Male',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: Custom_card(
                    child: GenderBoxContent(
                      gender: 'Female',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
         Expanded(
            child: Custom_card(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Height', style: labelStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('150', style: numberStyle),
                      Text('cm'),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 10),
                      activeTrackColor: secondaryColor,
                      inactiveTrackColor: Colors.white,
                      thumbColor: secondaryColor,
                    ),
                    child: Slider(
                      min: 130,
                      max: 200,
                      value: 150,
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
          ),
           Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Custom_card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Weight', style: labelStyle),
                        Text('60', style: numberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(iconData: FontAwesomeIcons.minus),

                            CustomIconButton(iconData: FontAwesomeIcons.plus),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: Custom_card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Text('Age', style: labelStyle),
                        Text('25', style: numberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(iconData: FontAwesomeIcons.minus),

                            CustomIconButton(iconData: FontAwesomeIcons.plus),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
         
          CalculateButton(title: "Calculate"), 
          
        ],
      ),
    );
  }
}
