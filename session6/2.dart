// Temperature Converter
// Write a function that converts temperature from Celsius to Fahrenheit and vice versa.
// Accept temperature value and unit ('C' for Celsius, 'F' for Fahrenheit) as inputs.
// Convert accordingly and return the result.

import 'dart:io';

void main() {
  print('Enter temperature value: ');
  double temperature = double.parse(stdin.readLineSync()!);
  print('Enter unit (C for Celsius, F for Fahrenheit): ');
  String unit = stdin.readLineSync()!.toUpperCase();
  double result = convertTemperature(temperature, unit);
  print('Result: $result');
}

double convertTemperature(double temperature, String unit) {
  if (unit == 'C') {
    return temperature * 1.8 + 32;
  } else if (unit == 'F') {
    return (temperature - 32) * 0.5556;
  } else {
    throw ArgumentError(
        'Invalid unit. Use "C" for Celsius or "F" for Fahrenheit.');
  }
}
