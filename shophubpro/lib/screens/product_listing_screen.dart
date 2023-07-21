import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgets/product_card.dart';

class ProductListingScreen extends StatelessWidget {
  final List<Product> products;

  ProductListingScreen({required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shophub')),
      body: ListView.builder(
          itemCount: (products.length / 2).ceil(), // Number of rows in the GridView
          itemBuilder: (context, rowIndex) {
            final startingIndex = rowIndex * 2;
            return Row(
              children: [
                Expanded(
                  child: ProductCard(product: products[startingIndex]),
                ),
                SizedBox(width: 8), // Add spacing between products
                Expanded(
                  child: (startingIndex + 1 < products.length)
                      ? ProductCard(product: products[startingIndex + 1])
                      : SizedBox(), // Use SizedBox if the last row has an odd number of products
                ),
              ],
            );
          },
        ),  
    );
  }
}
