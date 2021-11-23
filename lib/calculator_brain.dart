import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25){
      return 'Hasil : Gemuk';
    } else if (_bmi > 18.5){
      return 'Hasil : Normal';
    } else {
      return 'Hasil : Kurus';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25){
      return 'Anda memiliki berat badan yang tinggi, cobalah untuk lebih banyak berolahraga.';
    } else if (_bmi > 18.5){
      return 'Anda memiliki hasil yang normal, bagus sekali.';
    } else {
      return 'Anda memiliki berat badan yang rendah, cobalah untuk lebih banyak mengonsumsi makanan bergizi.';
    }
  }
}