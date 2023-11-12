import 'package:bmi_calculater/widgets/reusable_card.dart';
import 'package:bmi_calculater/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;

  const ResultScreen({super.key, required this.result});

  String intranslateResult() {
    if (result >= 0 && result <= 18)
      return 'You\'re Underweight😊';
    else if (result >= 19 && result <= 25)
      return 'You\'re in shape (Normal or Health Weight)👌';
    else if (result >= 26 && result <= 29)
      return 'You\'re Overweight😒';
    else
      return 'You\'re Obese😂';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            Expanded(
                child: ReusableCard(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        result.toStringAsFixed(1),
                        style: TextStyle(
                          fontSize: 56,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        intranslateResult(),
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
            )),
            CustomButton(
              onPressed: () => Navigator.pop(context),
              title: 'Re-calculate',
            )
          ],
        ));
  }
}
