import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _ShopItem = [
    ['Apple', '5.00', 'assets/images/apple.png', Colors.red],
    ['Avocado', '4.00', 'assets/images/avocado.png', Colors.green],
    ['Banana', '3.00', 'assets/images/bananas.png', Colors.yellow],
    ['Pear', '4.00', 'assets/images/pear.png', Colors.greenAccent],
  ];
  final List _cartItem = [];
  get shopItems => _ShopItem;
  get cartItem => _cartItem;

  // add Item to card
  void addItemToCart(int index) {
    _cartItem.add(_ShopItem[index]);
    notifyListeners();
  }

  // remove Item to card
  void removeItemToCard(int index) {
    _cartItem.removeAt(index);
    notifyListeners();
  }

  // Calculate total price

  String calculateTotlaPrice() {
    double totalPrice = 0;
    for (int i = 0; i < cartItem.length; i++) {
      totalPrice += double.parse(cartItem[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
