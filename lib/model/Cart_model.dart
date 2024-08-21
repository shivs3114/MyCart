import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopList = [
    ['Avacado', 1.4, 'assets/avacado.jpg', Colors.red],
    ['Banana', 1.01, 'assets/banana.png', Colors.yellow],
    ['Lychee', 0.6, 'assets/lichi.jpg', Colors.pink],
    ['Zucchini', 1.6, 'assets/download.jpg', Colors.green],
    ['Dragon fruit', 2.3, 'assets/dragon.jpg', Colors.blue],
    ['Mango', 1.5, 'assets/mango.jpg', Colors.orange],
  ];

  List _cartItems = [];
  get CartItems => _cartItems;

  get ShopItems => _shopList;

  void addItem(int index) {
    _cartItems.add(_shopList[index]);
    notifyListeners();
    print(_cartItems);
  }

  void removeItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String Total() {
    double total = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      total += _cartItems[i][1];
    }
    return total.toStringAsFixed(2);
  }
}
