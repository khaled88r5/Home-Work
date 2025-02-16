// Basic Calculator Program in Dart
/* Create a Dart program that takes two numbers as input and performs addition, subtraction,
 multiplication, and division using variables, arithmetic operators, and functions. Also, include
 optional parameters for different operations (e.g., addition of multiple numbers)*/
import 'dart:io';

// Function to add two numbers
double add(double a, double b) {
  return a + b;
}

// Function to subtract two numbers
double subtract(double a, double b) {
  return a - b;
}

// Function to multiply two numbers
double multiply(double a, double b) {
  return a * b;
}

// Function to divide two numbers
double divide(double a, double b) {
  if (b == 0) {
    print('Cannot divide by zero');
  }
  return a / b;
}

// Function to add multiple numbers using optional parameters
double addMultiple(List<double> numbers) => numbers.reduce((a, b) => a + b);

void main() {
  print('Basic Calculator Program');

  // Get input from user
  print('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  // Perform operations
  print('\nResults:');
  print('$num1 + $num2 = ${add(num1, num2)}');
  print('$num1 - $num2 = ${subtract(num1, num2)}');
  print('$num1 * $num2 = ${multiply(num1, num2)}');
  print('$num1 / $num2 = ${divide(num1, num2)}');

  // Demonstrate adding multiple numbers
  print('\nEnter numbers to add (space separated): ');
  List<double> numbers =
      stdin.readLineSync()!.split(' ').map((e) => double.parse(e)).toList();
  print('Sum of all numbers: ${addMultiple(numbers)}');
}
