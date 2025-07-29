import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_drawer.dart';
import 'package:minimal_shop/components/my_product_tile.dart';
import 'package:minimal_shop/models/porduct.dart';
import 'package:minimal_shop/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access prodeuct in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Shop Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart_page');
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),

      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ListView(
        children: [
          //shop subtitle
          Center(
            child: Text(
              'Pick from a selected list of premium products',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),

          //product list
          SizedBox(
            height: 550,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),

              itemBuilder: (context, index) {
                final product = products[index];

                //return as a product tile UI
                return MyProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
