// Question 3: To-Do List App
// Create a to-do list program using a List where each item has a description, due date, and
// completion status (as bool). Implement methods to add, remove, and update tasks, including the
// use of for-each loops.

class Task {
  String description;
  String dueDate;
  bool isCompleted;

  Task(this.description, this.dueDate, this.isCompleted);
}

void main() {
  List<Task> todoList = [];

  // Add task
  void addTask(String description, String dueDate) {
    todoList.add(Task(description, dueDate, false));
    print('Task added: $description');
  }

  // Remove task
  void removeTask(String description) {
    todoList.removeWhere((task) => task.description == description);
    print('Task removed: $description');
  }

  // Update task status
  void updateTask(String description, bool status) {
    var task = todoList.firstWhere((task) => task.description == description,
        orElse: () => Task('', '', false));
    if (task.description.isNotEmpty) {
      task.isCompleted = status;
      print('Task updated: $description - Completed: $status');
    } else {
      print('Task not found: $description');
    }
  }

  // Display all tasks
  void displayTasks() {
    if (todoList.isEmpty) {
      print('No tasks in the to-do list.');
    } else {
      print('To-Do List:');
      todoList.forEach((task) {
        print(
            '${task.description} (Due: ${task.dueDate}) - Completed: ${task.isCompleted}');
      });
    }
  }

  // Test the functions
  addTask('Buy groceries', '2023-10-15');
  addTask('Finish homework', '2023-10-14');
  displayTasks();

  updateTask('Buy groceries', true);
  displayTasks();

  removeTask('Finish homework');
  displayTasks();
}
