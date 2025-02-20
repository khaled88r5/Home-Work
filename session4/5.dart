/* 
 5. Sets, Functions & Return Statement
 Write a function `uniqueNames(List<String> names)` that:- 
 Accepts a list of names.- Returns a Set containing only unique names.
 Call the function inside `main()` and print the result.
*/
import 'dart:io';

void main() {
  List<String> names = [
    'ahmed',
    'khaled',
    'mohamed',
    'ahmed',
    'mahmod',
    'kareem',
    'khaled'
  ];
  uniqueNames(names);
}

void uniqueNames(List<String> names) {
  Set<String> uniNames = Set.from(names);
  print('the unique set of the names is $uniNames');
}
