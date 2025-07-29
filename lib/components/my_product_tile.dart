import 'package:flutter/material.dart';
import 'package:minimal_shop/models/porduct.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
        
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          //product image
          Icon(Icons.favorite),
          //Image.asset(product.imagePath),

          //product name
          Text(product.name),

          //product description
          Text(product.description),

          //product price
          Text(product.price.toStringAsFixed(0)),

        ],
      ),
    );
  }
}