import 'dart:math';

class Calculator {
  
  Calculator({
    required this.height,
    required this.weight,
  });

  final double height;
  final int weight;

  double _bmi = 0.0;

  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2 );
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){

    if (_bmi >= 25) {
      return 'Sobrepeso';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Delgado';
    }

  }

  String getInterpolation(){
    if (_bmi >= 25) {
      return 'Tienes un peso superior al normal. Intenta hacer más ejercicio.';
    } else if (_bmi > 18.5){
      return 'Tienes un peso normal. ¡Buen trabajo!';
    } else {
      return 'Tienes un peso inferior al normal. Puedes comer un poco más.';
    }
  }

}