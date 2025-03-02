/* LoanProcessingSystem Class
 Create a LoanProcessingSystem class that:
    - Stores a list of loans.
    - Provides methods to:
        - applyLoan(Loan loan): Adds a loan application to the system.
        - calculateInstallments(int months): Calculates the monthly installment for all loans*/
import '1.dart';
import '2.dart';

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    // Add a loan application to the system
    loans.add(loan);
  }

  void calculateInstallments(int months) {
    // Calculate the monthly installment for all loans
    for (var loan in loans) {
      loan.calculateMonthlyInstallment(months);
    }
  }
}

void main() {
  LoanProcessingSystem loanProcessingSystem = LoanProcessingSystem();
  PersonalLoan personalLoan = PersonalLoan('khaled', 10000, 10);
  HomeLoan homeLoan = HomeLoan('ahmed', 1000000, 10);
  CarLoan carLoan = CarLoan('kareem', 1000000, 10);
  loanProcessingSystem.applyLoan(personalLoan);
  loanProcessingSystem.applyLoan(homeLoan);
  loanProcessingSystem.applyLoan(carLoan);
  loanProcessingSystem.calculateInstallments(12);

  for (var loan in loanProcessingSystem.loans) {
    print('Borrower Name: ${loan.borrowerName}');
    print('Loan Amount: ${loan.loanAmount}');
    print('Interest Rate: ${loan.interestRate}');
    print('Monthly Installment: ${loan.calculateMonthlyInstallment(12)}');
    print('\n');
  }
}
