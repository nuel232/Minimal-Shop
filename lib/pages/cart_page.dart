import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_drawer.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Cart'),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      drawer: MyDrawer(),
    );
  }
}
