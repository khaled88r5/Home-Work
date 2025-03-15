import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final VoidCallback onAddDiscount;
  final VoidCallback onRemoveDiscount;

  const ProductCard({
    Key? key,
    required this.product,
    required this.onAdd,
    required this.onRemove,
    required this.onAddDiscount,
    required this.onRemoveDiscount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(product.imageUrl,
                width: 80, height: 80, fit: BoxFit.cover),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Quantity: ${product.quantity}',
                      style: const TextStyle(fontSize: 14)),
                  Row(
                    children: [
                      Text("\$${product.orginal_price}",
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough)),
                      const SizedBox(width: 8),
                      Text("\$${product.sell_price}",
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green)),
                    ],
                  ),
                  Text(
                      "Discount: \$${product.orginal_price - product.sell_price}",
                      style: const TextStyle(color: Colors.red, fontSize: 14)),
                ],
              ),
            ),
            Column(
              children: [
                Text('Quantity:'),
                Row(
                  children: [
                    IconButton(
                        onPressed: onAdd,
                        icon: const Icon(Icons.add, color: Colors.green)),
                    IconButton(
                        onPressed: onRemove,
                        icon: const Icon(Icons.remove, color: Colors.red)),
                  ],
                ),
                Text('Discount:'),
                Row(
                  children: [
                    IconButton(
                        onPressed: onAddDiscount,
                        icon:
                            const Icon(Icons.arrow_upward, color: Colors.blue)),
                    IconButton(
                        onPressed: onRemoveDiscount,
                        icon: const Icon(Icons.arrow_downward,
                            color: Colors.orange)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
