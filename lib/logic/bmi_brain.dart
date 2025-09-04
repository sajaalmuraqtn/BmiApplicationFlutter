import 'dart:math';

class BMICalculator {
  final int weight;
  final int height;
  double bmi = 0;

  BMICalculator({required this.weight, required this.height}) {
    bmiCalc();
  }

  void bmiCalc() {
    print("weight = $weight height = $height");
    bmi = weight / pow(height / 100, 2);
    print("BMI = $bmi");
  }

  String getResult() {
    if (bmi >= 40)
      return 'Obsese';
    else if (bmi >= 25)
      return 'Overweight';
    else if (bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

String getAdvice() {
  if (bmi >= 40)
    return "Your BMI is very high. Please consult a healthcare professional to develop a safe plan for your health.";
  else if (bmi >= 30)
    return "You are in the obese range. Try adding more daily activity and choosing balanced meals.";
  else if (bmi >= 25)
    return "Your weight is above the recommended range. Small lifestyle changes, like walking more often, can make a difference.";
  else if (bmi >= 18.5)
    return "Your weight is within the healthy range. Keep maintaining your good habits!";
  else
    return "Your weight is below the recommended range. Consider eating more nutrient-rich meals and strength training to build healthy muscle.";
}
}