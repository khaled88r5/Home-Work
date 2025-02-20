/* 
2. Arithmetic Operators, Conditional Statements & Functions
 Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
 bonus based on the following rules:- If the employee has worked for 5 or more years, they get a 10% bonus.
 - Otherwise, they get a 5% bonus.
 The function should return the bonus amount.
 Then, call the function inside `main()` and print the result.
*/
void main() {
  print('bounes is ${{calculateBonus(20000, 4)}}');
}

double calculateBonus(double salary, int years) {
  double bounes;
  if (years >= 5) {
    bounes = (salary / 10);
  } else {
    bounes = (salary / 100) * 5;
  }
  return bounes;
}
