import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _ShopItem = [
    ['Apple', '12.00', 'assets/images/apple.png', Colors.red],
    ['Avocado', '10.00', 'assets/images/avocado.png', Colors.green],
    ['Banana', '9.00', 'assets/images/bananas.png', Colors.yellow],
    ['Beet', '4.00', 'assets/images/beet.png', Colors.red],
    ['Brocoli', '3.00', 'assets/images/broccoli.png', Colors.green],
    ['Carrot', '4.50', 'assets/images/carrot.png', Colors.orange],
    ['Cherry', '7.00', 'assets/images/cherry.png', Colors.redAccent],
    ['Peach', '6.00', 'assets/images/peach.png', Colors.yellowAccent],
    ['Grapes', '14.00', 'assets/images/grapes.png', Colors.purple],
    ['Chicken', '16.00', 'assets/images/chicken.png', Colors.red],
    ['Chili Pepper', '2.00', 'assets/images/Chili pepper.png', Colors.red],
    ['Corn', '3.00', 'assets/images/corn.png', Colors.yellow],
    ['Eggplant', '1.00', 'assets/images/eggplant.png', Colors.purple],
    ['Green leek', '5.00', 'assets/images/green leek.png', Colors.green],
    ['Kiwi', '10.00', 'assets/images/Kiwi.png', Colors.brown],
    ['Mango', '8.00', 'assets/images/mango.png', Colors.yellow],
    ['Pear', '13.00', 'assets/images/pear.png', Colors.yellow],
    ['Peas', '5.00', 'assets/images/Peas.png', Colors.greenAccent],
    ['Pumpkin', '4.00', 'assets/images/pumpkin.png', Colors.yellow],
    ['Tomato', '2.00', 'assets/images/tomato.png', Colors.redAccent],
    ['Water', '4.00', 'assets/images/water.png', Colors.blue],
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
