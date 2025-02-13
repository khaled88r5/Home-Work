/* Nested If for Temperature Ranges
 Objective: Use nested if statements to check multiple conditions.
 Instructions:- Create an integer variable temperature.
 - If temperature is above 30, print 'It's hot!'.- 
 If it's between 15 and 30, print 'It's warm.'.
 - Otherwise, print 'It's cold.'.*/
void main() {
  int dgree = 30;
  if (dgree > 30) {
    print('hot');
  } else if (15 <= dgree && dgree <= 30) {
    print('warm');
  } else {
    print('cold');
  }
}
