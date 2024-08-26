import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // List of products for sale
  final List<Product> _shop = [
    // product 1
    Product(
        name: "Hoodie",
        price: 299.99,
        description:
            "Stay cozy and stylish with our premium cotton-blend pullover hoodie, featuring an adjustable hood and spacious front pocket.",
        imagePath: 'assets/hoodie.png'),
    // product 2
    Product(
        name: "Shoes",
        price: 499.99,
        description: "Step into comfort and style with our versatile sneakers, designed with a cushioned sole and breathable upper.",
        imagePath: 'assets/shoes.png'),
    // product 3
    Product(
        name: "Watch",
        price: 999.99,
        description: "Elevate your look with our sleek, water-resistant watch, featuring a minimalist design and durable strap.",
        imagePath: 'assets/watch.png'),
    // product 4
    Product(
        name: "Sun Glasses",
        price: 99.99,
        description: " Enhance your vision with our lightweight, scratch-resistant glasses, offering clear lenses and a modern frame.",
        imagePath: 'assets/glasses.png'),
  ];

  // user cart
  final List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
