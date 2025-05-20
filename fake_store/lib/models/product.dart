class Product {
  final int? id;
  final String title;
  final double price;
  final String description;
  final int categoryId;
  final List<String> images;

  Product({
    this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.categoryId,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: (json['price'] as num).toDouble(),
      description: json['description'],
      categoryId:
          json['category'] is int
              ? json['category']
              : (json['category']?['id'] ?? 1),
      images:
          (json['images'] is List)
              ? (json['images'] as List).map((e) => e.toString()).toList()
              : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'price': price,
      'description': description,
      'categoryId': categoryId,
      'images': images,
    };
  }
}
