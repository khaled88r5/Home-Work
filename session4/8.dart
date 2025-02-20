/* 
  8. Switch Case, Functions & Default Values
 Write a function `getDayType(String day)` that:
 - Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
 - Returns "Weekday" otherwise.- If the input is invalid, return "Invalid day".
 Call the function inside `main()` and print the result
*/

void main() {
  print(getDayType('Saturday'));
}

String getDayType(String day) {
  switch (day) {
    case 'Saturday':
    case 'Sunday':
      return ('weekend');

    case 'Monday':
    case 'Tuesday':
    case 'wednesday':
    case 'Tursday':
    case 'Friday':
      return ('Weekday');

    default:
      return ('Invalid day');
  }
}
