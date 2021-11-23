import 'package:bmi_calculator_praktikum_m/components/bottom_button.dart';
import 'package:bmi_calculator_praktikum_m/components/reusable_card.dart';
import 'package:bmi_calculator_praktikum_m/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';
  const ResultPage(
      {Key key, this.bmiResult, this.resultText, this.interpretation})
      : super(key: key);

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    final ResultPage resultPage = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('HASIL HITUNG'),
          backgroundColor: Color(0xFF0A0E21), 
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Hasil Hitung',
                  style: kTitleTextStyle,
                ),
              ),
            ),

            // ini resultPage.resultText
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          resultPage.resultText,
                          style: kResultTextStyle,
                        ),
                      ),
                    ),

                    // ini resultPage.bmiResult
                    Expanded(
                      child: Center(
                        child: Text(
                          resultPage.bmiResult,
                          style: kBmiTextStyle,
                        ),
                      ),
                    ),

                    // ini resultPage.interpretation
                    Expanded(
                      child: Center(
                        child: Text(
                          resultPage.interpretation,
                          style: kBodyTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ini tombol untuk menghitung ulang
            BottomButton(buttonText: "HITUNG ULANG", onTap: () {
              Navigator.pushNamed(context, '/');
            },
            ),
          ],
        ),
        );
  }
}
