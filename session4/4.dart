/* 
 4. Maps, Functions & User Input
 Create a Dart program that:- Declares a `Map<String, int>` where keys are fruit names and values are their
 prices.- Implements a function `getPrice(String fruitName)` that returns the price of a
 given fruit.- If the fruit is not found, return -1.
 Call the function inside `main()` and print the result
*/
void main() {
  Map<String, double> fruitPrice = {
    'apple': 50,
    'orange': 60,
    'strawberry': 80,
    'banana': 30
  };
  print(getPrice('ale', fruitPrice));
}

double? getPrice(String fruitName, Map fruitList) {
  if (fruitList.containsKey(fruitName)) {
    return fruitList[fruitName];
  } else {
    return (-1);
  }
}
