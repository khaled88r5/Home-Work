// Question 5: Class Creation and Dot Operator Usage
// Create a class with a few properties and methods. Instantiate the class and use the dot operator to
// access and print its properties and methods.

class Student {
  String name;
  int age;
  String major;

  Student(this.name, this.age, this.major);

  void introduce() {
    print('Hello, I\'m $name, $age years old, studying $major.');
  }

  void celebrateBirthday() {
    age++;
    print('Happy Birthday $name! You are now $age years old.');
  }
}

void main() {
  // Create student object
  var student = Student('Alice', 20, 'Computer Science');

  // Access properties and methods using dot operator
  print('Student Name: ${student.name}');
  print('Student Age: ${student.age}');
  print('Student Major: ${student.major}');

  student.introduce();
  student.celebrateBirthday();

  // Access updated age
  print('Updated Age: ${student.age}');
}
