// Check Leap Year
// Write a function that determines if a given year is a leap year.
// A year is a leap year if it is divisible by 4 but not divisible by 100, except if it is also divisible by 400.

bool isLeapYear(int year) {
  return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
}

void main() {
  int year = 2000;
  if (isLeapYear(year)) {
    print('$year is a leap year.');
  } else {
    print('$year is not a leap year.');
  }
}
