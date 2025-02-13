/*Set Properties
Objective: Learn about sets by checking properties like size and membership.
Instructions:- Create a set named uniqueNumbers with the values {10, 20, 30, 40}.- 
Print the length of uniqueNumbers.- 
Check if the number 20 is present in the set and print the res*/
void main() {
  Set<int> uniqNumbers = {10, 20, 30, 40};
  print(uniqNumbers);

  if (uniqNumbers.contains(20)) {
    print('the set contain 20');
  } else {
    print('the set dosent contain 20');
  }
}
