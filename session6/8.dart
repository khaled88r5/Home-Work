// Sum of List Elements
// Write a function that takes a list of numbers and returns the sum of all elements.
// Example:
// sumList([1, 2, 3, 4, 5]) -> 15

int sumList(List<int> numbers) => numbers.reduce((a, b) => a + b);

////another method
int sum(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum;
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  print('Sum of list elements: ${sumList(numbers)}');
  print('Sum of list elements:    ${sum(numbers)}');
}
