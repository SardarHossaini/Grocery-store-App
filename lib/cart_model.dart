import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _ShopItem = [
    ['Apple', '5.00', 'assets/images/apple.png', Colors.red],
    ['Avocado', '4.00', 'assets/images/avocado.png', Colors.green],
    ['Banana', '3.00', 'assets/images/bananas.png', Colors.yellow],
    ['Pear', '4.00', 'assets/images/pear.png', Colors.greenAccent],
  ];
  get shopItems => _ShopItem;
}
