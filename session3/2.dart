// Question 2: Grocery List Manager
// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
// displaying items. Use functions with return types and optional/named parameters. Make sure to
// handle possible null values.

void main() {
  List<String> groceryList = [];

  // Add item to list
  void addItem(String item) {
    if (item.isNotEmpty) {
      groceryList.add(item);
      print('$item added to the list.');
    } else {
      print('Cannot add empty item.');
    }
  }

  // Remove item from list
  void removeItem(String item) {
    if (groceryList.contains(item)) {
      groceryList.remove(item);
      print('$item removed from the list.');
    } else {
      print('$item not found in the list.');
    }
  }

  // Display all items
  void displayItems() {
    if (groceryList.isEmpty) {
      print('The grocery list is empty.');
    } else {
      print('Grocery List:');
      for (var item in groceryList) {
        print('- $item');
      }
    }
  }

  // Test the functions
  addItem('Milk');
  addItem('Bread');
  addItem('Eggs');
  displayItems();

  removeItem('Bread');
  displayItems();

  removeItem('Butter'); // Item not in list
  displayItems();
}
