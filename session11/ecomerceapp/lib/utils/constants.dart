import '../models/product.dart';

enum FilterOptions { all, electronics, clothing, accessories, software }

List<Product> inventory = [
  // ✅ الإلكترونيات (Electronics)
  Product(
    id: 1,
    name: 'Laptop',
    type: 'electronics',
    quantity: 5,
    buy_price: 800,
    sell_price: 1200,
    orginal_price: 1200,
    discount: 0,
    imageUrl: 'assets/images/laptop.png',
  ),
  Product(
    id: 2,
    name: 'Smartphone',
    type: 'electronics',
    quantity: 5,
    buy_price: 500,
    sell_price: 850,
    orginal_price: 850,
    discount: 0,
    imageUrl: 'assets/images/smartphone.png',
  ),
  Product(
    id: 3,
    name: 'Smartwatch',
    type: 'electronics',
    quantity: 5,
    buy_price: 150,
    sell_price: 250,
    orginal_price: 250,
    discount: 0,
    imageUrl: 'assets/images/smartwatch.png',
  ),
  Product(
    id: 4,
    name: 'Wireless Headphones',
    type: 'electronics',
    quantity: 5,
    buy_price: 100,
    sell_price: 180,
    orginal_price: 180,
    discount: 0,
    imageUrl: 'assets/images/headphones.png',
  ),

  // ✅ الملابس (Clothing)
  Product(
    id: 5,
    name: 'T-Shirt',
    type: 'clothing',
    quantity: 5,
    buy_price: 20,
    sell_price: 40,
    orginal_price: 40,
    discount: 0,
    imageUrl: 'assets/images/tshirt.png',
  ),
  Product(
    id: 6,
    name: 'Jeans',
    type: 'clothing',
    quantity: 5,
    buy_price: 50,
    sell_price: 90,
    orginal_price: 90,
    discount: 0,
    imageUrl: 'assets/images/jeans.png',
  ),
  Product(
    id: 7,
    name: 'Jacket',
    type: 'clothing',
    quantity: 5,
    buy_price: 80,
    sell_price: 130,
    orginal_price: 130,
    discount: 0,
    imageUrl: 'assets/images/jacket.png',
  ),
  Product(
    id: 8,
    name: 'Sneakers',
    type: 'clothing',
    quantity: 5,
    buy_price: 100,
    sell_price: 160,
    orginal_price: 160,
    discount: 0,
    imageUrl: 'assets/images/sneakers.png',
  ),

  // ✅ الإكسسوارات (Accessories)
  Product(
    id: 9,
    name: 'Sunglasses',
    type: 'accessories',
    quantity: 5,
    buy_price: 30,
    sell_price: 60,
    orginal_price: 60,
    discount: 0,
    imageUrl: 'assets/images/sunglasses.png',
  ),
  Product(
    id: 10,
    name: 'Backpack',
    type: 'accessories',
    quantity: 5,
    buy_price: 40,
    sell_price: 80,
    orginal_price: 80,
    discount: 0,
    imageUrl: 'assets/images/backpack.png',
  ),
  Product(
    id: 11,
    name: 'Wallet',
    type: 'accessories',
    quantity: 5,
    buy_price: 20,
    sell_price: 50,
    orginal_price: 50,
    discount: 0,
    imageUrl: 'assets/images/wallet.png',
  ),
  Product(
    id: 12,
    name: 'Watch',
    type: 'accessories',
    quantity: 5,
    buy_price: 90,
    sell_price: 150,
    orginal_price: 150,
    discount: 0,
    imageUrl: 'assets/images/watch.png',
  ),

  // ✅ البرمجيات (Software)
  Product(
    id: 13,
    name: 'Windows License',
    type: 'software',
    quantity: 5,
    buy_price: 30,
    sell_price: 50,
    orginal_price: 50,
    discount: 0,
    imageUrl: 'assets/images/windows.png',
  ),
  Product(
    id: 14,
    name: 'Antivirus Subscription',
    type: 'software',
    quantity: 5,
    buy_price: 40,
    sell_price: 70,
    orginal_price: 70,
    discount: 0,
    imageUrl: 'assets/images/antivirus.png',
  ),
  Product(
    id: 15,
    name: 'Adobe Photoshop',
    type: 'software',
    quantity: 5,
    buy_price: 150,
    sell_price: 250,
    orginal_price: 250,
    discount: 0,
    imageUrl: 'assets/images/photoshop.png',
  ),
  Product(
    id: 16,
    name: 'Office 365 Subscription',
    type: 'software',
    quantity: 5,
    buy_price: 100,
    sell_price: 180,
    orginal_price: 180,
    discount: 0,
    imageUrl: 'assets/images/office365.png',
  ),
];
