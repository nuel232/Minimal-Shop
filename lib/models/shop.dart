import 'package:flutter/material.dart';
import 'package:minimal_shop/models/porduct.dart';

class Shop extends ChangeNotifier {
  //products for sale 
  final List<Product> _shop = [
  //product1
  Product(name: 'product1', price: 100.000, description: 'item description', imagePath: 'imagePath'),
  //product2
  Product(name: 'product2', price: 100.000, description: 'item description', imagePath: 'imagePath'),
  //product3
  Product(name: 'product5', price: 120.000, description: 'item description', imagePath: 'imagePath'),

  //product4
  Product(name: 'product4', price: 230.000, description: 'item description', imagePath: 'imagePath'),
  ];





  //user cart
  final List<Product> _cart = [];


  //get products list 
  List<Product> get shop => _shop;


  //get user cart 
  List<Product> get cart => _cart;


  //add item to cart 
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }



  //remove item from cart 
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }


}