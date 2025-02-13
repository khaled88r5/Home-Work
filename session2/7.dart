/* Objective: Practice conditional statements with integer values.
 Instructions:- Create an integer variable marks.- 
 If marks is 70 or higher, print 'Passed', otherwise print 'Failed'*/
void main() {
  int mark = 30;
  bool passed = mark >= 70;
  if (passed) {
    print('passed');
  } else {
    print('failed');
  }
}
