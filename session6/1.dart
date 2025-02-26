// Basic Arithmetic Calculator
// Write a function that takes two numbers and an operator (+, -, *, /) as input and returns the result.
// Handle cases where division by zero might occur.

import 'dart:io';

void main() {
  print('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  print('Enter operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  double result = calculate(num1, num2, operator);
  print('Result: $result');
}

double calculate(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return num1 + num2;
    case '-':
      return num1 - num2;
    case '*':
      return num1 * num2;
    case '/':
      if (num2 != 0) {
        return num1 / num2;
      } else {
        throw Exception('Division by zero is not allowed.');
      }
    default:
      throw Exception('Invalid operator: $operator');
  }
}
