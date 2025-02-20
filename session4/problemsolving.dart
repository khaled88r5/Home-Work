/* 
 Custom Message Function
 Topic: Optional and Named Parameters
 Exercise: Write a function displayMessage that takes a required String message, an optional String name, and a named
 int repeat with a default value of 1. The function should print the message and the name repeat times. If name is not
 provided, it should print the message alone
*/
void main() {
  bool dession = false;
  List<int> my = [5, 8, 10, 6, 7, 12];
  for (int i = 0; i < my.length; i++) {
    for (int n = i + 1; n < my.length; n++) {
      if (my[i] == my[n]) {
        dession = true;
        break;
      }
    }
  }
  print(dession);
}
