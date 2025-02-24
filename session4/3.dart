/* 
  3. Lists, Loops & If Conditions
 Create a list of numbers. Iterate over the list and:- If a number is even, print "Even: <number>".
 - If a number is odd, print "Odd: <numbe
*/

void main() {
  List<int> numbers = [5, 9, 10, 12, 6, 7, 80];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i].isOdd) {
      print('${numbers[i]} is odd');
    } else if (numbers[i].isEven) {
      print('${numbers[i]} is even');
    }
  }
}
