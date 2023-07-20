import 'package:flutter/material.dart';
import 'screens/product_listing_screen.dart';
import 'models/product_model.dart';

void main() {
  runApp(ShophubApp());
}

class ShophubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        id: 1,
        name: 'Product 1',
        description: 'Description of Product 1',
        price: 9.99,
        imageUrl: 'https://example.com/product1.jpg',
      ),
      // Add more products here
    ];

    return MaterialApp(
      title: 'Shophub',
      home: ProductListingScreen(products: products),
    );
  }
}
