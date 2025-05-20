import 'package:dio/dio.dart';
import '../models/product.dart';

class ProductService {
  static Future<List<Product>> getAllProducts() async {
    final response = await Dio().get(
      'https://api.escuelajs.co/api/v1/products',
    );
    final List data = response.data;
    return data.map((json) => Product.fromJson(json)).toList();
  }

  static Future<Product> addProduct(Product product) async {
    final response = await Dio().post(
      'https://api.escuelajs.co/api/v1/products',
      data: product.toJson(),
    );
    return Product.fromJson(response.data);
  }

  static Future<Product> updateProduct(Product product) async {
    final response = await Dio().put(
      'https://api.escuelajs.co/api/v1/products/${product.id}',
      data: product.toJson(),
    );
    return Product.fromJson(response.data);
  }

  static Future<void> deleteProduct(int id) async {
    await Dio().delete('https://api.escuelajs.co/api/v1/products/$id');
  }
}
