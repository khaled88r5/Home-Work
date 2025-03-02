/* Abstract Class: Loan
 Create an abstract class Loan with the following properties and methods:
    - borrowerName (String)
    - loanAmount (double)
    - interestRate (double)
    - Abstract method: double calculateMonthlyInstallment(int months)*/

abstract class Loan {
  late String borrowerName;
  late double loanAmount;
  late double interestRate;
  Loan(this.borrowerName, this.loanAmount, this.interestRate);
  double calculateMonthlyInstallment(int months) {
    return loanAmount / months;
  }
}
