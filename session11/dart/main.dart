import 'home_screen.dart';
import 'product.dart';

void main() {
  ProductManager manager = ProductManager();

  // Creating some products
  Product Laptop = Product(
      id: 1,
      name: "Laptop",
      quantity: 5,
      type: "electronics",
      buy_price: 800,
      sell_price: 1200,
      imageUrl: "assets/images/laptop.png",
      discount: 0,
      orginal_price: 1200);
  Product Smartphone = Product(
      id: 2,
      name: "Smartphone",
      quantity: 5,
      type: "electronics",
      buy_price: 500,
      sell_price: 850,
      imageUrl: "assets/images/smartphone.png",
      discount: 0,
      orginal_price: 850);
  Product Smartwatch = Product(
      id: 3,
      name: "Smartwatch",
      quantity: 5,
      type: "electronics",
      buy_price: 150,
      sell_price: 250,
      imageUrl: "assets/images/smartwatch.png",
      discount: 0,
      orginal_price: 250);

  // Adding products
  manager.addProduct(Laptop);
  manager.addProduct(Smartphone);
  manager.addProduct(Smartwatch);

  // Attempting to add a product with a duplicate ID (should fail)
  manager.addProduct(Product(
      id: 1,
      name: "Another Laptop",
      quantity: 8,
      type: "electronics",
      buy_price: 600,
      sell_price: 800,
      imageUrl: "assets/images/laptop2.png",
      discount: 5,
      orginal_price: 800));

  // Modifying quantity
  manager.addQuantity("Laptop", 5);
  manager.removeQuantity("Smartphone", 3);

  // Retrieving a product by name
  Product? foundProduct = manager.getProductByName("Laptop");
  if (foundProduct != null) {
    print(
        "Product found: ${foundProduct.name}\nQuantity: ${foundProduct.quantity}\nType: ${foundProduct.type}\nOriginal Price: \$${foundProduct.orginal_price * foundProduct.quantity}\nDiscounted Price: \$${foundProduct.sell_price * foundProduct.quantity}");
  }

  // Retrieving products by type
  List<Product> electronics = manager.getProductsByType("electronics");
  print("All products of type Electronics:");
  double totalOriginal = 0;
  double totalDiscounted = 0;
  for (var product in electronics) {
    print(
        "- ${product.name}, Quantity: ${product.quantity}, Original Price: \$${product.orginal_price * product.quantity}, Discounted Price: \$${product.sell_price * product.quantity}");
    totalOriginal += product.orginal_price * product.quantity;
    totalDiscounted += product.sell_price * product.quantity;
  }
  print("Total original price for Electronics: \$${totalOriginal}");
  print("Total discounted price for Electronics: \$${totalDiscounted}");

  // Calculating total prices for all products
  print("Total original price: \$${manager.getTotalOriginalPrice()}");
  print("Total discounted price: \$${manager.getTotalDiscountedPrice()}");
}
