/*Objective: Use switch for multiple cases.
 Instructions:- Create an integer variable month with a value between 1 and 12.-
  Use a switch statement to print the season based on the month*/
void main() {
  int month = 6;
  switch (month) {
    case 12:
    case 1:
    case 2:
      print('winter');
      break;
    case 3:
    case 4:
    case 5:
      print('spring');
      break;
    case 6:
    case 7:
    case 8:
      print('summer');
      break;
    case 9:
    case 10:
    case 11:
      print('autumn');
      break;
  }
}
