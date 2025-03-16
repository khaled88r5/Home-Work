class Product {
  final int id;
  int quantity;
  final String name;
  double sell_price;
  double discount;
  final double orginal_price;
  final double buy_price;
  final String imageUrl;
  String type;

  Product(
      {required this.quantity,
      required this.type,
      required this.id,
      required this.name,
      required this.buy_price,
      required this.sell_price,
      required this.imageUrl,
      required this.discount,
      required this.orginal_price});

  void addquantatiy(int newQuantity) {
    quantity += newQuantity;
  }

  void additem(int newQuantity) {
    quantity += newQuantity;
  }

  void removequantaty(int newQuantity) {
    quantity -= newQuantity;
  }

  void getTotal() {
    double total = quantity * sell_price;
    print(' total quantaity is $quantity and total price is $total');
  }

  void getTotalWithDiscount() {
    double total = quantity * sell_price * (1 - discount / 100);
    print(' total quantaity is $quantity and total price is $total');
  }

  void getTotalWithBuyPrice() {
    double total = quantity * buy_price;
    print(' total quantaity is $quantity and total price is $total');
  }

  void getTotalWithBuyPriceWithDiscount() {
    double total = quantity * buy_price * (1 - discount / 100);
    print(' total quantaity is $quantity and total price is $total');
  }

  void add_disscount(double discount) {
    this.discount += discount;
    sell_price = orginal_price - (orginal_price * this.discount / 100);
  }

  void clear_disscount(double discount) {
    discount = 0;
    sell_price = orginal_price;
  }

  void remove_disscount(double discount) {
    this.discount -= discount;
    sell_price = orginal_price - (orginal_price * this.discount / 100);
  }
}
