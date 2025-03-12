import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // List to hold cart items
  final List<String> _items = [];

  List<String> get items => _items;

  // Add item to cart
  void addItem(String item) {
    _items.add(item);
    notifyListeners();
  }

  // Remove item from cart
  void removeItem(String item) {
    _items.remove(item);
    notifyListeners();
  }

  // Clear cart
  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}