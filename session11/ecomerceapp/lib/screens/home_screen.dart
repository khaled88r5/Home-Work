import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import '../models/product.dart';
import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FilterOptions selectedFilter = FilterOptions.all;

  List<Product> getFilteredProducts() {
    if (selectedFilter == FilterOptions.all) {
      return inventory;
    } else {
      return inventory
          .where((product) =>
              product.name.toLowerCase() == selectedFilter.name.toLowerCase() ||
              product.type.toLowerCase() == selectedFilter.name.toLowerCase())
          .toList();
    }
  }

  double getOriginalPrice() => inventory.fold(0,
      (total, product) => total + (product.orginal_price * product.quantity));

  double getDiscountPrice() => inventory.fold(
      0, (total, product) => total + (product.sell_price * product.quantity));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ecommerce App"), centerTitle: true),
      body: Column(
        children: [
          Wrap(
            spacing: 10,
            children: FilterOptions.values.map((filter) {
              return ElevatedButton(
                onPressed: () => setState(() => selectedFilter = filter),
                child: Text(filter.name.toUpperCase()),
              );
            }).toList(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: getFilteredProducts().length,
              itemBuilder: (context, index) {
                var product = getFilteredProducts()[index];
                return ProductCard(
                  product: product,
                  onAdd: () => setState(() => product.add(1)),
                  onRemove: () => setState(() => product.remove(1)),
                  onAddDiscount: () => setState(() => product.add_disscount(5)),
                  onRemoveDiscount: () =>
                      setState(() => product.remove_disscount(5)),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, -5),
                )
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Price Before Discount:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("\$${getOriginalPrice()}",
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 76, 54, 244))),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Price After Discount:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("\$${getDiscountPrice()}",
                        style: TextStyle(fontSize: 16, color: Colors.green)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
