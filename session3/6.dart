// Question 6: Working with Maps - Student Details
// Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
// and remove entries from the map, printing the map after each operation.
// Task 2: Iterate over the map and print each key-value pair.

void main() {
  // Create initial student map
  Map<String, dynamic> student = {'name': 'John Doe', 'age': 18, 'grade': 'A'};

  // Print initial map
  print('Initial Student Details:');
  print(student);

  // Add new entry
  student['school'] = 'XYZ High School';
  print('\nAfter adding school:');
  print(student);

  // Update existing entry
  student['grade'] = 'A+';
  print('\nAfter updating grade:');
  print(student);

  // Remove entry
  student.remove('age');
  print('\nAfter removing age:');
  print(student);

  // Task 2: Iterate over the map
  print('\nIterating over the map:');
  student.forEach((key, value) {
    print('$key: $value');
  });
}
