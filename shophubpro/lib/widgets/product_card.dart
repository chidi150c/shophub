import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../screens/product_detail_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: SizedBox(
          height: 250, // Set the fixed height here
          child: Card(
            elevation: 4,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                product.imageUrl,
                height: 150, // Adjust the height of the image here
                width: 150, // Adjust the width of the image here
                fit: BoxFit.cover, // Set the image fit behavior
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(product.description),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('\$${product.price.toStringAsFixed(2)}'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
