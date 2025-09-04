import 'package:bmi_app/helpers/constants.dart';
import 'package:bmi_app/logic/bmi_brain.dart';
import 'package:bmi_app/screens/resultScreen.dart';
import 'package:bmi_app/widgets/calculateButton.dart';
import 'package:bmi_app/widgets/custom_card.dart';
import 'package:bmi_app/widgets/custom_icon_button.dart';
import 'package:bmi_app/widgets/gender_box_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { Male, Female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int height = 150;
  int weight = 30;
  int age = 17;
  Gender selectedGender = Gender.Male;

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
                    cardColor: selectedGender == Gender.Male
                        ? secondaryColor
                        : background_card_color,
                    onTap: () => {
                      setState(() {
                        selectedGender = Gender.Male;
                      }),
                    },
                    child: GenderBoxContent(
                      gender: 'Male',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: Custom_card(
                    cardColor: selectedGender == Gender.Female
                        ? secondaryColor
                        : background_card_color,

                    child: GenderBoxContent(
                      gender: 'Female',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                    onTap: () => {
                      setState(() {
                        selectedGender = Gender.Female;
                      }),
                    },
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
                      Text(height.toString(), style: numberStyle),
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
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height=value.round();
                        });
                      },
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
                        Text(weight.toString(), style: numberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight = weight > 30 ? weight - 1 : weight;
                                });
                              },
                            ),
                            CustomIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight = weight < 200 ? weight + 1 : weight;
                                });
                              },
                            ),
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
                        Text(age.toString(), style: numberStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                              iconData: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age = age > 17 ? age - 1 : age;
                                });
                              },
                            ),
                            CustomIconButton(
                              iconData: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age = age < 60 ? age + 1 : age;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          CalculateButton(
            title: "Calculate",
            onPressed: () {
              BMICalculator  bmiCalc =new BMICalculator(weight: weight, height: height);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultScreen(resultClass:bmiCalc.getResult(), bmi: bmiCalc.bmi, advice: bmiCalc.getAdvice(),)),
              );
            },
          ),
        ],
      ),
    );
  }
}
