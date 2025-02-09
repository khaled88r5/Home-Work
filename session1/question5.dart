// What is the difference between var and dynamic in Dart? Provide an example of each.
// var is a keyword that makes the variable take the value type.
// dynamic is a data type that can accept text, numbers, bool, etc.
void main() {
  var number = 5; // int
  var text = 'ahmed'; // String
  dynamic number1 = 20; // dynamic
  dynamic text1 = 'khaled'; // dynamic
  print(number.runtimeType); // output is int
  print(number1.runtimeType); // output is dynamic
  print(text.runtimeType); // output is String
  print(text1.runtimeType); // output is dynamic
}
