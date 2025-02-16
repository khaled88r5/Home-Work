// Question 8: Range Checker Program
// Write a Dart program that checks if a number is within a specified range using logical operators and
// prints the result.

import 'dart:io';

void main() {
  // Define the range
  const int lowerBound = 10;
  const int upperBound = 50;

  stdout.write('Enter a number: ');
  double number = double.tryParse(stdin.readLineSync()!) ?? 0;

  if (number >= lowerBound && number <= upperBound) {
    print('$number is within the range $lowerBound to $upperBound.');
  } else {
    print('$number is outside the range $lowerBound to $upperBound.');
  }
}
