/* 
  6. Null Safety, Encapsulation & Classes
Create a class `Person` with the following attributes:- `String name`- `int? age` (nullable)
- `bool isStudent` (default is false)
 Implement:- A constructor that initializes `name` and `age`.
 - A method `displayInfo()` that prints the person's details.
 In `main()`, create an instance of `Person` and call `displayInfo()`.
*/
void main() {
  Person khaled = Person(name: 'khaled', age: 22, isStudent: true);
  khaled.displayInfo();
}

class Person {
  String name;
  int? age;
  bool isStudent;

  Person({required this.name, this.age, this.isStudent = false});

  void displayInfo() {
    print(
        'Hello, my name is $name and I am $age years old, and i am a student $isStudent');
  }
}
