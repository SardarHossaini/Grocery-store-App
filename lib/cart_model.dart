import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _ShopItem = [
    ['Apple', '12.00', 'assets/images/apple.png', Colors.red],
    ['Avocado', '10.00', 'assets/images/avocado.png', Colors.green],
    ['Banana', '9.00', 'assets/images/bananas.png', Colors.yellow],
    ['Beet', '4.00', 'assets/images/beet.png', Colors.red[500]],
    ['Brocoli', '3.00', 'assets/images/brocoli.png', Colors.green[500]],
    ['Carrot', '4.50', 'assets/images/carrot.png', Colors.orange[400]],
    ['Cherry', '7.00', 'assets/images/cherrt.png', Colors.red[700]],
    ['Chicken', '16.00', 'assets/images/chicken.png', Colors.red[600]],
    ['Chili Pepper', '2.00', 'assets/images/Chili pepper.png', Colors.red[800]],
    ['Corn', '3.00', 'assets/images/corn.png', Colors.yellow[400]],
    ['Eggplant', '1.00', 'assets/images/eggplant.png', Colors.purple[800]],
    ['Grapes', '14.00', 'assets/images/grapes.png', Colors.purple[600]],
    ['Green leek', '5.00', 'assets/images/green leek.png', Colors.green[100]],
    ['Kiwi', '10.00', 'assets/images/Kiwi.png', Colors.brown],
    ['Mango', '8.00', 'assets/images/mango.png', Colors.yellow[600]],
    ['Mango', '8.00', 'assets/images/mango.png', Colors.yellow[600]],
    ['Peach', '6.00', 'assets/images/peach.png', Colors.yellow[400]],
    ['Pear', '13.00', 'assets/images/pear.png', Colors.yellow[300]],
    ['Peas', '5.00', 'assets/images/Peas.png', Colors.greenAccent],
    ['Pumpkin', '4.00', 'assets/images/pumpkin.png', Colors.yellow[200]],
    ['Tomato', '2.00', 'assets/images/tomato.png', Colors.redAccent[400]],
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
