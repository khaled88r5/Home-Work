// Question 2: Grocery List Manager
// Implement a program that uses a List to store grocery items. It should allow adding, removing, and
// displaying items. Use functions with return types and optional/named parameters. Make sure to
// handle possible null values.

void main() {
  List<String> groceryList = [];

  // Test the functions
  addItem('Milk', groceryList);
  addItem('Bread', groceryList);
  addItem('Eggs', groceryList);
  displayItems(groceryList);

  removeItem('Bread', groceryList);
  displayItems(groceryList);

  removeItem('Butter', groceryList); // Item not in list
  displayItems(groceryList);
}

// Add item to list
void addItem(String item, List<String> groceryList) {
  if (item.isNotEmpty) {
    groceryList.add(item);
    print('$item added to the list.');
  } else {
    print('Cannot add empty item.');
  }
}

// Remove item from list
void removeItem(String item, List<String> groceryList) {
  if (groceryList.contains(item)) {
    groceryList.remove(item);
    print('$item removed from the list.');
  } else {
    print('$item not found in the list.');
  }
}

// Display all items
void displayItems(List<String> groceryList) {
  if (groceryList.isEmpty) {
    print('The grocery list is empty.');
  } else {
    print('Grocery List:');
    for (var item in groceryList) {
      print('- $item');
    }
  }
}
