import 'package:flutter/material.dart';
import '../models/product.dart';
import 'edit_product_screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  const ProductDetailsScreen({Key? key, required this.product})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            if (product.images.isNotEmpty)
              Image.network(product.images[0], height: 200, fit: BoxFit.cover),
            const SizedBox(height: 16),
            Text(
              product.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Price: ${product.price}',
              style: const TextStyle(fontSize: 18, color: Colors.blue),
            ),
            const SizedBox(height: 8),
            Text(
              'Category ID: ${product.categoryId}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(product.description),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () async {
                final updated = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => EditProductScreen(product: product),
                  ),
                );
                if (updated == true) Navigator.of(context).pop(true);
              },
              child: const Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }
}
