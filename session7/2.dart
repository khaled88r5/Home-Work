/* Loan Subclasses
 Three types of loans should be implemented:
    - PersonalLoan: Has a fixed 10% interest rate.
    - HomeLoan: Has a base 8% interest rate, but if loanAmount > 500,000, the rate increases to 9.5%.
    - CarLoan: Has a 7% interest rate, but if loanAmount > 50,000, it applies an additional 2% processing fee*/
import '1.dart';

class PersonalLoan extends Loan {
  PersonalLoan(super.borrowerName, super.loanAmount, super.interestRate);

  @override
  double calculateMonthlyInstallment(int months) {
    return loanAmount * (interestRate / 100) / months;
  }
}

class HomeLoan extends Loan {
  HomeLoan(super.borrowerName, super.loanAmount, super.interestRate);

  @override
  double calculateMonthlyInstallment(int months) {
    interestRate = loanAmount > 500000 ? 9.5 : 8.0;
    return loanAmount * (interestRate / 100) / months;
  }
}

class CarLoan extends Loan {
  CarLoan(super.borrowerName, super.loanAmount, super.interestRate);

  @override
  double calculateMonthlyInstallment(int months) {
    interestRate = loanAmount > 50000 ? 7 + ((loanAmount / 100) * 2) : 7.0;
    return loanAmount * (interestRate / 100) / months;
  }
}
