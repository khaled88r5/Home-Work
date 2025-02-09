// Given this code, identify any errors and explain why they occur:
// ```dart
// void main() {
//   String name = "Alice";
//   name = 123;
//   print(name);
// }
// ```

void main() {
  String name = "Alice";
  // The following line will cause an error because name is a String and cannot hold an integer.
  name = 123;
  print(name);
}

// Error Explanation: The error occurs because the variable `name` is declared as a `String`,
// and then an attempt is made to assign an integer value (`123`) to it.
