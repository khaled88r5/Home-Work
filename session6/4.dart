// Find Prime Numbers in a Range
// Write a function that takes two numbers (start, end) and returns a list of all prime numbers between them.
// Ensure that the function correctly identifies prime numbers and handles edge cases where start is greater than end.

List<int> findPrimes(int start, int end) {
  List<int> primes = [];
  for (int i = start; i <= end; i++) {
    bool isPrime = true;
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primes.add(i);
    }
  }
  return primes;
}

void main() {
  List<int> primes = findPrimes(2, 20);
  print(primes);
}
