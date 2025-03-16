import 'product.dart';

class ProductManager {
  List<Product> products = [];

  // إضافة منتج جديد مع التأكد من عدم تكرار الـ ID
  void addProduct(Product product) {
    bool exists = products.any((p) => p.id == product.id);
    if (!exists) {
      products.add(product);
      print("product added ${product.name}");
    } else {
      print("ID already exists ${product.id}");
    }
  }

  // البحث عن منتج باستخدام الاسم
  Product? getProductByName(String name) {
    for (var product in products) {
      if (product.name.toLowerCase() == name.toLowerCase()) {
        return product;
      }
    }
    return null; // إذا لم يتم العثور على المنتج
  }

  // البحث عن جميع المنتجات حسب النوع
  List<Product> getProductsByType(String type) {
    return products
        .where((p) => p.type.toLowerCase() == type.toLowerCase())
        .toList();
  }

  // زيادة الكمية بناءً على اسم المنتج
  void addQuantity(String name, int quantity) {
    Product? product = getProductByName(name);
    if (product != null) {
      product.addquantatiy(quantity);
      print(
          "$quantity  has been added to  $name. /n current quantaity: ${product.quantity}");
    } else {
      print("product not found");
    }
  }

  // تقليل الكمية بناءً على اسم المنتج
  void removeQuantity(String name, int quantity) {
    Product? product = getProductByName(name);
    if (product != null) {
      product.removequantaty(quantity);
      print(
          "$quantity has been removed of $name.  current quantaity: ${product.quantity}");
    } else {
      print("product not found");
    }
  }

  // حساب إجمالي السعر قبل وبعد الخصم للمنتجات كلها
  double getTotalOriginalPrice() {
    return products.fold(
        0, (total, p) => total + (p.orginal_price * p.quantity));
  }

  double getTotalDiscountedPrice() {
    return products.fold(0, (total, p) => total + (p.sell_price * p.quantity));
  }

  // حساب إجمالي السعر قبل وبعد الخصم لنوع معين من المنتجات
  double getTotalOriginalPriceByType(String type) {
    return getProductsByType(type)
        .fold(0, (total, p) => total + (p.orginal_price * p.quantity));
  }

  double getTotalDiscountedPriceByType(String type) {
    return getProductsByType(type)
        .fold(0, (total, p) => total + (p.sell_price * p.quantity));
  }
}
