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
        name: 'Shoes',
        description: 'High Quality Mokers',
        price: 9.99,
        imageUrl: 'lib/assets/shoe.jpg',
      ),
      Product(
        id: 2,
        name: 'Dresses',
        description: 'Best Selling Dress',
        price: 19.99,
        imageUrl: 'lib/assets/dress.JPG',
      ),
      
      // Add more products here
    ];

    return MaterialApp(
      title: 'Shophub',
      home: ProductListingScreen(products: products),
    );
  }
}
