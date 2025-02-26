// Employee Payroll System
// Implement an employee payroll system.
// Create a base Employee class with properties: name, id, and salary.
// Implement a method calculateSalary() in the base class.
// Create two subclasses:
// - FullTimeEmployee: Adds a bonus and overrides calculateSalary() to include the bonus.
// - PartTimeEmployee: Adds hoursWorked and hourlyRate, overriding calculateSalary() to compute salary based on hours worked.

class Employee {
  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  double calculateSalary() {
    return salary;
  }
}

class FullTimeEmployee extends Employee {
  double bonus;

  FullTimeEmployee(String name, int id, double salary, this.bonus)
      : super(name, id, salary);

  @override
  double calculateSalary() {
    return super.calculateSalary() + bonus;
  }
}

class PartTimeEmployee extends Employee {
  int hoursWorked;
  double hourlyRate;

  PartTimeEmployee(String name, int id, this.hoursWorked, this.hourlyRate)
      : super(name, id, 0.0);

  @override
  double calculateSalary() {
    return hoursWorked * hourlyRate;
  }
}

void main() {
  FullTimeEmployee employee1 = FullTimeEmployee('khaled', 8565, 5000, 500);
  PartTimeEmployee employee2 = PartTimeEmployee('ahmed', 5469, 10, 100);

  print(
      'Employee 1 - Name: ${employee1.name}, ID: ${employee1.id}, Salary: ${employee1.calculateSalary()}');
  print(
      'Employee 2 - Name: ${employee2.name}, ID: ${employee2.id}, Salary: ${employee2.calculateSalary()}');
}
