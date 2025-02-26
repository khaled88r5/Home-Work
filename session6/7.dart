// Reverse a String
// Write a function that takes a string as input and returns the string reversed.
// Example:
// reverseString('hello') -> 'olleh'

String reverseString(String input) {
  return input.split('').reversed.join();
}

/////another method
String reverse(String input) {
  List<String> newWord = [];

  for (int i = input.length - 1; i >= 0; i--) {
    newWord.add(input[i]);
  }
  return newWord.join();
}

void main() {
  String input = 'hello';

  print('Reversed string: ${reverseString(input)}');

  print("////////////////////////");

  print(reverse(input));
}
