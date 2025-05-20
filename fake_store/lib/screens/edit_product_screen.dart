import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/product_service.dart';

class EditProductScreen extends StatefulWidget {
  final Product product;
  const EditProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _formKey = GlobalKey<FormState>();
  late String title;
  late String description;
  late double price;
  late int categoryId;
  late String images;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    title = widget.product.title;
    description = widget.product.description;
    price = widget.product.price;
    categoryId = widget.product.categoryId;
    images = widget.product.images.join(', ');
  }

  void submit() async {
    if (!_formKey.currentState!.validate()) return;
    _formKey.currentState!.save();
    setState(() => isLoading = true);
    try {
      await ProductService.updateProduct(
        Product(
          id: widget.product.id,
          title: title,
          price: price,
          description: description,
          categoryId: categoryId,
          images: images.split(',').map((e) => e.trim()).toList(),
        ),
      );
      if (mounted) Navigator.of(context).pop(true);
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Failed to update product: $e')));
    }
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Product')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                initialValue: title,
                decoration: const InputDecoration(labelText: 'Title'),
                validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                onSaved: (v) => title = v!,
              ),
              TextFormField(
                initialValue: price.toString(),
                decoration: const InputDecoration(labelText: 'Price'),
                keyboardType: TextInputType.number,
                validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                onSaved: (v) => price = double.tryParse(v ?? '') ?? 0,
              ),
              TextFormField(
                initialValue: description,
                decoration: const InputDecoration(labelText: 'Description'),
                validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                onSaved: (v) => description = v!,
              ),
              TextFormField(
                initialValue: categoryId.toString(),
                decoration: const InputDecoration(labelText: 'Category ID'),
                keyboardType: TextInputType.number,
                validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                onSaved: (v) => categoryId = int.tryParse(v ?? '') ?? 1,
              ),
              TextFormField(
                initialValue: images,
                decoration: const InputDecoration(
                  labelText: 'Images (comma separated URLs)',
                ),
                validator: (v) => v == null || v.isEmpty ? 'Required' : null,
                onSaved: (v) => images = v!,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: isLoading ? null : submit,
                child:
                    isLoading
                        ? const CircularProgressIndicator()
                        : const Text('Update Product'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
